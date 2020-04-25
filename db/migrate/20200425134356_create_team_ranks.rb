class CreateTeamRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :team_ranks do |t|
      t.references :team, foreign_key: true, null: false
      t.references :rank, foreign_key: true, null: false

      t.timestamps
    end
  end
end
