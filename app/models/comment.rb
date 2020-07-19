class Comment < ApplicationRecord
	belongs_to :team
	validates :content, presence: true
end
