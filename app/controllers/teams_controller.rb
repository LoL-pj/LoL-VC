class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find_by(id: params[:id])
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
  end

  def destroy
  end

  def team_params
    params.require(:team).permit(:title, :summoner_name, :game_type, :discord, :skype, :body, :password)
  end
end
