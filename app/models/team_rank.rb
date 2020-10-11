# == Schema Information
#
# Table name: team_ranks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rank_id    :bigint           not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_team_ranks_on_rank_id  (rank_id)
#  index_team_ranks_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (rank_id => ranks.id)
#  fk_rails_...  (team_id => teams.id)
#
class TeamRank < ApplicationRecord
  belongs_to :team
  belongs_to :rank
end
