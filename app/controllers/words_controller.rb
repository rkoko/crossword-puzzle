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
    @cw = Crossword.answer_key(alpha[selector])
    render json: @cw
  end

end
