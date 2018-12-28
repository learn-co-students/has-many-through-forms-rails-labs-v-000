class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    redirect_to user
  end

  private

  def post_params
    params.require(:user).permit(:username, :email)
  end
end
