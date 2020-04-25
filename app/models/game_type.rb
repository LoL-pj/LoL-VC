class GameType < ApplicationRecord
  has_many :teams, through: :team_game_types
end
