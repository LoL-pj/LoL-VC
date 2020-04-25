class Rank < ApplicationRecord
  has_many :teams, through: :team_ranks
end
