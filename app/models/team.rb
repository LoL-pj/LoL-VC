class Team < ApplicationRecord
  has_many :team_ranks
  has_many :team_game_types
  has_many :team_champions
  has_many :game_types, through: :team_game_types
  has_many :ranks, through: :team_ranks
  has_many :champions, through: :team_champions
  has_many :tags, through: :team_tags
end
