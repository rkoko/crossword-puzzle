class WordsController < ApplicationController
  def index
    @words = Word.all
      render json: @words
  end

  def show
  end

  def home
    alpha = ("a".."z").to_a
    selector = rand(0..25)
    while true
      if Crossword.make(alpha[selector]).length == 0
         selector = rand(0..25)
      else
        @cw = Crossword.make(alpha[selector])
        break
      end
    end
    render json: @cw
  end

end
