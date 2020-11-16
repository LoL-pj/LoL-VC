# frozen_string_literal: true

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
#  rank_range      :string(255)      default("UNRANK")
#  skype           :string(255)
#  summoner_name   :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'net/http'
require 'uri'
require 'json'
require "addressable/uri"


class Team < ApplicationRecord
  API_KEY = ENV['API_KEY']

  has_secure_password
  has_many :team_ranks, dependent: :destroy
  has_many :team_game_types, dependent: :destroy
  has_many :team_champions, dependent: :destroy
  has_many :team_lanes, dependent: :destroy
  has_many :game_types, through: :team_game_types
  has_many :ranks, through: :team_ranks
  has_many :champions, through: :team_champions
  has_many :tags, through: :team_tags
  has_many :lanes, through: :team_lanes

  validates :body, presence: true
  validates :summoner_name, presence: true

  enum gender: { man: 0, woman: 1, unknown: 2 }

  scope :search, -> (search_params) do
    return if search_params.blank?

    keyword_like(search_params[:keyword]).game_type_like(search_params[:game_type_ids]).rank_like(search_params[:rank_ids]).lane_like(search_params[:lane_ids])
  end

  scope :keyword_like, -> (keyword) { where('body LIKE ?', "%#{keyword}%") if keyword.present? }
  scope :game_type_like, -> (game_type) { joins(:game_types).where(game_types: {id: game_type}) if game_type[1].present? }
  scope :rank_like, -> (rank) { joins(:ranks).where(ranks: {id: rank}) if rank[1].present? }
  scope :lane_like, -> (lane) { joins(:lanes).where(lanes: {id: lane}) if lane[1].present? }

  def profile_img(summoner_name)

		uri = Addressable::URI.parse("https://jp1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{summoner_name}?api_key=#{API_KEY}")
		return_data = Net::HTTP.get(uri)
		summoner_data = JSON.parse(return_data)
		summoner_data["profileIconId"]
  end
  
  def rank_rng(summoner_name)
    summoner_v4 = Addressable::URI.parse("https://jp1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{summoner_name}?api_key=#{API_KEY}")
    return_data = Net::HTTP.get(summoner_v4)
		summoner_data = JSON.parse(return_data)
    encrypted_summoner_id = summoner_data["id"]

    league_v4 = Addressable::URI.parse("https://jp1.api.riotgames.com/lol/league/v4/entries/by-summoner/#{encrypted_summoner_id}?api_key=#{API_KEY}")
    return_data = Net::HTTP.get(league_v4) 
    league_data = JSON.parse(return_data)
    
    begin
    if league_data.empty?
      "UNRANK"
    else  
      league_data[0]["tier"]
    end
  rescue NoMethodError
    "UNRANK"
    end
  end
end
