class AddHiddenToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :hidden, :boolean, default: true, null: false
  end
end
