class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.create(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end


end
