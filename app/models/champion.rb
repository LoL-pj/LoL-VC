class Champion < ApplicationRecord
  has_many :teams, through: :team_champions
end
