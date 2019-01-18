class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #@posts = Post.joins(:comments).where('comments.user_id' == ?, @user.id)
  end

end
