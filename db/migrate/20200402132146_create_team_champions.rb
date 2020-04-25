class CreateTeamChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :team_champions do |t|
      t.references :team, foreign_key: true, null: false
      t.references :champion, foreign_key: true, null: false

      t.timestamps
    end
  end
end
