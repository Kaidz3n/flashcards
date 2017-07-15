class Card < ApplicationRecord
	validates_presence_of :original_text, :translated_text

	scope :published, ->(time) { where("review_date <= ?", time)}
end
