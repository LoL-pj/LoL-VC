# == Schema Information
#
# Table name: teams
#
#  id              :bigint           not null, primary key
#  body            :text(65535)      not null
#  discord         :string(255)
#  gender          :integer          default("man")
#  password_digest :string(255)
#  profile_image   :integer
#  skype           :string(255)
#  summoner_name   :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  rank_id         :integer
#
require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
