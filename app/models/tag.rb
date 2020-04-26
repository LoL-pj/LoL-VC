class Tag < ApplicationRecord
  has_many :teams, through: :team_tags
end
