# == Schema Information
#
# Table name: game_types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GameType < ApplicationRecord
  has_many :teams, through: :team_game_types
end
