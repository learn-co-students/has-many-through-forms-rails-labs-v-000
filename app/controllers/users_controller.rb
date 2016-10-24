class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.comments.map{|comment| comment.post}
  end

end
