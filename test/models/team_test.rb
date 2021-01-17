# == Schema Information
#
# Table name: teams
#
#  id              :bigint           not null, primary key
#  body            :text(65535)      not null
#  discord         :string(255)
#  gender          :integer          default("man")
#  hidden          :boolean          default(TRUE), not null
#  password_digest :string(255)
#  profile_image   :integer
#  rank_range      :string(255)      default("UNRANK")
#  skype           :string(255)
#  summoner_name   :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
