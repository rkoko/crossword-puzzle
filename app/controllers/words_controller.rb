class WordsController < ApplicationController
  def index
    @words = Word.all
    respond_to do |format|
      format.json {render json: @words}
    end
  end

  def show
  end

end
