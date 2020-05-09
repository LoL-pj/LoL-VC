class RemovePasswordFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :password, :string
  end
end
