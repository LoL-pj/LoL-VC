class TeamChampion < ApplicationRecord
  belongs_to :team
  belongs_to :champion
end
