class WordsController < ApplicationController
  def index
    @words = Word.all
      render json: @words    
  end

  def show
  end

end
