class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.comments.collect{|comment| comment.post}
  end

end
