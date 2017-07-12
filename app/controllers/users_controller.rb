class UsersController < ApplicationController

  def index
    @users = User.all
     render json: @users
  end

  def create
  end

  def show

  end

  def destroy
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
