class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :edit, :new, :search]

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
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: '募集しました' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @team.authenticate(team_params[:password]) && @team.update(team_params)
        format.html { redirect_to @team, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: '削除しました'}
    end
  end

  def search
    @teams = Team.search(team_search_params)
  end

  def team_params
    params.require(:team).permit(:title, :summoner_name, :discord, :skype, :body, :password, rank_ids: [], game_type_ids: [], champion_ids: [])
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def get_all
    @teams = Team.all
    @game_types = GameType.all
    @ranks = Rank.all
    @champions = Champion.all
  end

  private

  def team_search_params
    params.fetch(:search, {}).permit(:keyword, game_type_ids: [], rank_ids: [], champion_ids: [])
  end
end
