class CreateTeamTags < ActiveRecord::Migration[6.0]
  def change
    create_table :team_tags do |t|
      t.references :team, foreign_key: true, null: false
      t.references :tag, foreign_key: true, null: false

      t.timestamps
    end
  end
end
