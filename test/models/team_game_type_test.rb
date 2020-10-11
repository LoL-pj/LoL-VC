# == Schema Information
#
# Table name: team_game_types
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  game_type_id :bigint           not null
#  team_id      :bigint           not null
#
# Indexes
#
#  index_team_game_types_on_game_type_id  (game_type_id)
#  index_team_game_types_on_team_id       (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_type_id => game_types.id)
#  fk_rails_...  (team_id => teams.id)
#
require 'test_helper'

class TeamGameTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
