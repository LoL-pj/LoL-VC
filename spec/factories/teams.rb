# frozen_string_literal: true

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

FactoryBot.define do
  factory :team do
    body          { 'ゴールド帯の友達募集します。ランクにいきましょう' }
    discord       { 'rut oki#9454' }
    gender        { 'unknown' }
    summoner_name { '222cm' }
    password      { 'hogehoge' }

    trait :no_body do
      body { nil }
    end
    trait :no_summoner_name do
      summoner_name { nil }
    end
  end
end
