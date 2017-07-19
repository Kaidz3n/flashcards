class Card < ApplicationRecord
	validates_presence_of :original_text, :translated_text

	scope :expires, -> { where('review_date <= ?',Time.now).order('RANDOM() LIMIT 1') }
end
