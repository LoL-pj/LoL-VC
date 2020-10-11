# == Schema Information
#
# Table name: team_lanes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lane_id    :bigint           not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_team_lanes_on_lane_id  (lane_id)
#  index_team_lanes_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (lane_id => lanes.id)
#  fk_rails_...  (team_id => teams.id)
#
class TeamLane < ApplicationRecord
  belongs_to :team
  belongs_to :lane
end
