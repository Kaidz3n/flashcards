class Card < ApplicationRecord
	validates_presence_of :original_text, :translated_text, :review_date
	validates_uniqueness_of :original_text, :translated_text

	validates :original_text, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :original_text, format: { with: /\А[а-яА-Я]+\я/,
    message: "только кириллица" }
end
