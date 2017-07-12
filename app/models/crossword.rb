class Crossword < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :crossword_words
  has_many :words, through: :crossword_words

  def self.make(letter)
    all = Word.all.select{|word| word.answer.start_with?(letter)}

    if all.length == 0
      return Array.new
    end

    range = all.length - 1
    two = []
    selector = rand(0..range)
    while two.length < 2
      if all[selector]["answer"] && two.length == 0
        two.push(all[selector])
        selector = rand(0..range)
      elsif two.length == 1 && all[selector]["answer"] && all[selector]["answer"] != two[0]["answer"]
        two.push(all[selector])
      else
        selector = rand(0..range)
      end


    # all.each do |w|
    #   if two.length === 1 && w["answer"] && two[0]["answer"] != w["answer"]
    #     two.push(w)
    #   elsif w["answer"] && two.length === 0
    #     two.push(w)
    #   elsif two.length === 2
    #     return two
    #   end
    # end
  end
  return two
 end
end
