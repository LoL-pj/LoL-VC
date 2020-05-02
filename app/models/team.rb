class Team < ApplicationRecord
  has_many :team_ranks
  has_many :team_game_types
  has_many :team_champions
  has_many :game_types, through: :team_game_types
  has_many :ranks, through: :team_ranks
  has_many :champions, through: :team_champions
  has_many :tags, through: :team_tags

  scope :search, -> (search_params) do
    return if search_params.blank?

    keyword_like(search_params[:keyword]).game_type_like(search_params[:game_type_ids]).rank_like(search_params[:rank_ids]).champion_like(search_params[:champion_ids])
  end

  scope :keyword_like, -> (keyword) { where('title LIKE ? OR body LIKE ?', "%#{keyword}%", "%#{keyword}%") if keyword.present? }
  scope :game_type_like, -> (game_type) { joins(:game_types).where(game_type: {id: game_type}) if game_type.present? }
  scope :rank_like, -> (rank) { joins(:ranks).where(rank: {id: rank}) if rank.blank? }
  scope :champion_like, -> (champion) { joins(:champions).where(champion: {id: champion}) if champion.blank? }
end
