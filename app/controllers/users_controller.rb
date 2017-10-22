class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    redirect_to user
  end
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @users = User.all
    #raise @user.inspect
    #raise @posts.inspect
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, comment_ids:[], comments_attributes:[:comment])
  end
end
