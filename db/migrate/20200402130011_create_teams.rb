class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :summoner_name
      t.string :skype
      t.string :discord
      t.string :game_type
      t.string :password, null: false
      t.references :rank, foreign_key: true
      t.references :champion, foreign_key: true

      t.timestamps
    end
  end
end
