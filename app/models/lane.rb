# == Schema Information
#
# Table name: lanes
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Lane < ApplicationRecord
  has_many :teams, through: :team_lanes
end
