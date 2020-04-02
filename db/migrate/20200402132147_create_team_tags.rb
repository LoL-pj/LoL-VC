class CreateTeamTags < ActiveRecord::Migration[6.0]
  def change
    create_table :team_tags do |t|
      t.references :team_id, foreign_key: true, null: false
      t.references :tag_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
