class UsersController < ApplicationController

  def index
    @users = User.all
     json: @users
  end

  def create
  end

  def show

  end

  def destroy
  end

  def home
    @cw = Crossword.make("a")
    render json: @cw
  end

  def find_user
    User.find_by(username: params[:username])
  end

private


  def user_params
    params.require(:user).permit(
    :username,
    :age
    )
  end


end
