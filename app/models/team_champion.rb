# == Schema Information
#
# Table name: team_champions
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  champion_id :bigint           not null
#  team_id     :bigint           not null
#
# Indexes
#
#  index_team_champions_on_champion_id  (champion_id)
#  index_team_champions_on_team_id      (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (champion_id => champions.id)
#  fk_rails_...  (team_id => teams.id)
#
class TeamChampion < ApplicationRecord
  belongs_to :team
  belongs_to :champion
end
