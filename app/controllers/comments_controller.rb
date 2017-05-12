class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    # binding.pry
	    if comment_params[:user_attributes][:username].empty?
	    	comment.user = User.find(comment_params[:user_id]) 
	    else comment.user = User.create(username: comment_params[:user_attributes][:username])
    end 
    	comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end 
end