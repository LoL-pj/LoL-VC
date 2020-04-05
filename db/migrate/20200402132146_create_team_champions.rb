class CreateTeamChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :team_champions do |t|
      t.integer :team_id
      t.integer :champion_id

      t.timestamps
    end
  end
end
