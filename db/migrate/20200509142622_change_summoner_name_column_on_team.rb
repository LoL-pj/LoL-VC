class ChangeSummonerNameColumnOnTeam < ActiveRecord::Migration[6.0]
  def change
    change_column_null :teams, :summoner_name, false, 0
  end
end
