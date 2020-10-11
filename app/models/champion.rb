# == Schema Information
#
# Table name: champions
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Champion < ApplicationRecord
  has_many :teams, through: :team_champions
end
