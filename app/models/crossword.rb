class Crossword < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :crossword_words
  has_many :words, through: :crossword_words
end