class TeamsController < ApplicationController
  PER = 24
  before_action :set_team,  only: %i[show edit update destroy]
  before_action :get_all,   only: %i[index edit new search]
  before_action :get_teams, only: [:index]
  before_action :set_request_variant

  def index; end

  def show
    @champions = @team.champion_ids.map do |c|
      Champion.find(c).name
    end

    @game_types = @team.game_type_ids.map do |c|
      GameType.find(c).name
    end

    @lanes = @team.lane_ids.map do |l|
      Lane.find(l).name
    end
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.unknown_summoner_name?
      redirect_to new_team_path, alert: '実在するサモナー名を入力してください'
    else
      @team.profile_image = @team.profile_img(@team.summoner_name)
      @team.rank_range = @team.rank_rng(@team.summoner_name)
      if @team.summoner_name.present?
        @team.save
        redirect_to @team, notice: '投稿しました'
      else
        redirect_to new_team_path, alert: 'SummonerNameを入力してください'
      end
    end
  end

  def edit; end

  def update
    if params[:update] && @team.authenticate(team_params[:password])
      @team.update(team_params)
      redirect_to @team, notice: '投稿を更新しました'
    elsif params[:destroy] && @team.authenticate(team_params[:password])
      destroy
    else
      redirect_to edit_team_path, alert: 'パスワードが一致しません'
    end
  end

  def destroy
    @team.destroy
    redirect_to root_url, notice: '削除しました'
  end

  def search
    @teams = Team.search(team_search_params).distinct.page(params[:page]).per(PER).order('updated_at DESC')
    @summoner_name = team_search_params[:summoner_name]
    @keyword = team_search_params[:keyword]
  end

  def team_params
    params.require(:team).permit(:summoner_name, :hidden, :gender, :discord, :skype, :body, :password, game_type_ids: [], champion_ids: [], lane_ids: [])
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def get_all
    @game_types = GameType.all
    @champions = Champion.all
    @lanes = Lane.all
  end

  def get_teams
    @teams = Team.page(params[:page]).per(PER).order('updated_at DESC')
  end

  private

  def team_search_params
    params.fetch(:search, {}).permit(:summoner_name, :keyword, game_type_ids: [], rank_ids: [], champion_ids: [], lane_ids: [])
  end
end
