class UsersController < ApplicationController

  def index
    @users = User.all
     render json: @users
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user
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
