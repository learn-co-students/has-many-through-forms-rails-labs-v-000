require 'pry'
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    redirect_to user
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    binding.pry
    params.require(:user).permit(:post_id, :user_id, :username, user_attributes: [:username])
  end

end
