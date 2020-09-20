class RemoveTitleFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :title, :string
  end
end
