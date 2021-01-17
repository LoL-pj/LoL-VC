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
require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'w/ body and summoner name' do
    let(:team) { build(:team) }
    specify 'verification is valid' do
      expect(team).to be_valid
    end
  end

  context 'w/o body' do
    let(:team) { build(:team, :no_body) }
    specify 'verification is invalid' do
      team.valid?
      expect(team.errors[:body]).to include('を入力してください')
    end
  end

  context 'w/o summoner_name' do
    let(:team) { build(:team, :no_summoner_name) }
    specify 'verification is invalid' do
      team.valid?
      expect(team.errors[:summoner_name]).to include('を入力してください')
    end
  end
end
