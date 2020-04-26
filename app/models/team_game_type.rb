class TeamGameType < ApplicationRecord
  belongs_to :team
  belongs_to :game_type
end
