class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
  end

  def index
    @users = User.all
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
