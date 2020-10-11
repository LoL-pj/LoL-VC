# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  namet      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_many :teams, through: :team_tags
end
