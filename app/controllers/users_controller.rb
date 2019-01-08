class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @comments = Comment.all.select{|cmt| cmt.user == @user}
    @posts = @comments.collect {|cmt| cmt.post}
  end


 #find all of the posts the user commented on
end
