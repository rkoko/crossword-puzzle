class Crossword < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :crossword_words
  has_many :words, through: :crossword_words

  def self.make(letter)
    Word.all.select{|word| word.answer.start_with?(letter)}
  end




end
