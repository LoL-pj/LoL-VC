class AddGenderToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :gender, :integer, default: 0
  end
end
