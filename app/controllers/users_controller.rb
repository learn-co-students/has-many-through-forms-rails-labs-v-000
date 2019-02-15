class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
