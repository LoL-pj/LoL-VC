# == Schema Information
#
# Table name: team_tags
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tag_id     :bigint           not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_team_tags_on_tag_id   (tag_id)
#  index_team_tags_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (tag_id => tags.id)
#  fk_rails_...  (team_id => teams.id)
#
require 'test_helper'

class TeamTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
