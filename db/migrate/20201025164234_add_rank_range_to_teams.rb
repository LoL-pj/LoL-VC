class AddRankRangeToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :rank_range, :string, default: "UNRANK"
  end
end
