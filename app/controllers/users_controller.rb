class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    binding.pry
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit()
  end

end
