class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts_commented = @user.comments.select("distinct post_id").map {|a| a.post}
  end

end
