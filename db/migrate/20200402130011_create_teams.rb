class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :summoner_name, null: false
      t.string :skype
      t.string :discord
      t.string :password, null: false

      t.timestamps
    end
  end
end
