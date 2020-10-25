class AddRankIdToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :rank_id, :integer
  end
end
