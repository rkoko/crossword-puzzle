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
    @cw = Crossword.make("r")
    # if Crossword.make(alpha[selector]).empty?
    #   selector = rand(0..13)
    #   @cw = Crossword.make(alpha[selector])
    # # elsif Crossword.make(alpha[selector]).empty?
    #   # selector = rand(0..6)
    # elsif Crossword.make(alpha[selector]).empty?
    #   @cw = Crossword.make("r")
    # else
    #   @cw = Crossword.make(alpha[selector])
    # end
    render json: @cw
  end

end
