class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(post_params)
    redirect_to post
  end

  private
  def users_params
  	params.require(:user).permit(:username, :email)
  end
end

