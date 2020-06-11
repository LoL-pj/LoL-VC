class AddProfileImageToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :profile_image, :integer
  end
end
