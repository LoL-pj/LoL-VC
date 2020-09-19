class Lane < ApplicationRecord
  has_many :teams, through: :team_lanes
end
