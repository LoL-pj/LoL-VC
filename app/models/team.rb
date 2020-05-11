class Team < ApplicationRecord
  has_secure_password
  has_many :team_ranks
  has_many :team_game_types
  has_many :team_champions
  has_many :game_types, through: :team_game_types
  has_many :ranks, through: :team_ranks
  has_many :champions, through: :team_champions
  has_many :tags, through: :team_tags

  validates :title, presence: true
  validates :body, presence: true
  validates :summoner_name, presence: true

  scope :search, -> (search_params) do
    return if search_params.blank?

    keyword_like(search_params[:keyword]).game_type_like(search_params[:game_type_ids]).rank_like(search_params[:rank_ids]).champion_like(search_params[:champion_ids])
  end

  scope :keyword_like, -> (keyword) { where('title LIKE ? OR body LIKE ?', "%#{keyword}%", "%#{keyword}%") if keyword.present? }
  scope :game_type_like, -> (game_type) { joins(:game_types).where(game_types: {id: game_type}) if game_type[1].present? }
  scope :rank_like, -> (rank) { joins(:ranks).where(ranks: {id: rank}) if rank[1].present? }
  scope :champion_like, -> (champion) { joins(:champions).where(champions: {id: champion}) if champion[1].present? }
end
