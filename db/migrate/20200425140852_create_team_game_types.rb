class CreateTeamGameTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :team_game_types do |t|
      t.references :team, foreign_key: true, null: false
      t.references :game_type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
