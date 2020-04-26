class TeamsController < ApplicationController

  def search
    @search_params = team_search_params
    @teams = Team.search(@search_params)
  end

  private

  def team_search_params
    params.fetch(:search, {}).permit(:keyword, game_type_ids: [], rank_ids: [], champion_ids: [])
  end
end
