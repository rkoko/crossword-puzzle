class Crossword < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :crossword_words
  has_many :words, through: :crossword_words

  def self.answer_key(letter)
    answer_array = []
     one_across = self.one_across(letter)
     two_down = self.find_word(one_across.answer[4], 0, 5)
     three_across = self.find_word(two_down.answer[4], 2, 3)
     three_down = self.find_word(three_across.answer[0], 0, 5)
     four_across = self.find_word(three_down.answer[4], 0, 5)
     five_down = self.find_word(four_across.answer[4], 0, 3)
     six_across = self.find_word(five_down.answer[2], 2, 3)
     six_down = self.find_word(six_across.answer[0], 0, 5)
     seven_across = self.find_word(six_down.answer[4], 4, 8)

     answer_array.push(one_across, two_down, three_across, three_down, four_across, five_down, six_across, six_down, seven_across)
    return answer_array
  end

  def self.one_across(letter)
    all = Word.all.select{|word| word.answer.start_with?(letter) && word.answer.length == 5}
    range = all.length - 1
    selector = rand(0..range)
    one_across = all[selector]
    return one_across
  end

  def self.find_word(char, i, length)
    all = Word.all.select{|word| word.answer.split("")[i] == char && word.answer.length == length}
    range = all.length - 1
    selector = rand(0..range)
    word = all[selector]
    return word
  end

end
