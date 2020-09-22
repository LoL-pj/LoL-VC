class TeamsController < ApplicationController
  PER = 24
  before_action :set_team,  only: [:show, :edit, :update, :destroy]
  before_action :get_all,   only: [:index, :edit, :new, :search]
  before_action :get_teams, only: [:index, :search]

  def index
  end

  def show
    @champions = @team.champion_ids.map do |c|
      Champion.find(c).name
    end

    @game_types = @team.game_type_ids.map do |c|
      GameType.find(c).name
    end

    @ranks = @team.rank_ids.map do |r|
      Rank.find(r).name
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
    @team.profile_image = @team.profile_img(@team.summoner_name)
    if @team.summoner_name.present?
      @team.save
      redirect_to @team, notice: '投稿しました'
    else
      redirect_to new_team_path, alert: 'SummonerNameを入力してください'
    end
  end

  def edit
  end

  def update
    if params[:update] && @team.authenticate(team_params[:password])
      @team.update(team_params)
      redirect_to @team, notice: '投稿を更新しました'
    elsif params[:destroy] && @team.authenticate(team_params[:password])
      self.destroy
    else
      redirect_to edit_team_path, alert: 'パスワードが一致しません'
    end
  end

  def destroy
      @team.destroy
      redirect_to root_url, notice: '削除しました'
  end

  def search
    @teams = Team.search(team_search_params).page(params[:page]).distinct.per(PER)
  end

  def team_params
    params.require(:team).permit(:summoner_name, :discord, :skype, :body, :password, rank_ids: [], game_type_ids: [], champion_ids: [], lane_ids: [])
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def get_all
    @game_types = GameType.all
    @ranks = Rank.all
    @champions = Champion.all
    @lanes = Lane.all
  end

  def get_teams
    @teams = Team.page(params[:page]).per(PER)
  end

  private

  def team_search_params
    params.fetch(:search, {}).permit(:keyword, game_type_ids: [], rank_ids: [], champion_ids: [], lane_ids: [])
  end
end
