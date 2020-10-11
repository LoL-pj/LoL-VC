# == Schema Information
#
# Table name: ranks
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Rank < ApplicationRecord
  has_many :teams, through: :team_ranks
end
