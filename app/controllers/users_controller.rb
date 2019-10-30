class UsersController < ApplicationController
	
  def show
    comment = Comment.find(params[:id]) 
    @user = comment.user
  end

  def create 
  	@user = User.new
  end

end
