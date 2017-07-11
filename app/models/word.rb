class Word < ApplicationRecord
  has_many :crossword_words
  has_many :crosswords, through: :crossword_words
end
