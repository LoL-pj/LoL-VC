class TeamLane < ApplicationRecord
  belongs_to :team
  belongs_to :lane
end
