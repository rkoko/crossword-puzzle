class Crossword < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :crossword_words
  has_many :words, through: :crossword_words

  def self.make(letter)
    all = Word.all.select{|word| word.answer.start_with?(letter)}
    two = []
    all.uniq{|w| w["answer"]}
    two.push(all[0])
    two.push(all[1])
    return two
  end

end
