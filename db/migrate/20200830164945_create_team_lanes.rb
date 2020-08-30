class CreateTeamLanes < ActiveRecord::Migration[6.0]
  def change
    create_table :team_lanes do |t|
      t.references :team, foreign_key: true, null: false
      t.references :lane, foreign_key: true, null: false

      t.timestamps
    end
  end
end
