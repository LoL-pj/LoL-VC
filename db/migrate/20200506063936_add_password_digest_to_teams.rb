class AddPasswordDigestToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :password_digest, :string
  end
end
