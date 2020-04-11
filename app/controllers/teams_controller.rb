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
    @team = Team.new(teams_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @tema, notice: '募集しました' }
        format.json { render :show, status: :created, location: @tema }
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
    params.require(:team).permit(resources :teams)
  end
end
