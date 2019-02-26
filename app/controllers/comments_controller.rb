class CommentsController < ApplicationController


  def create
  	
    comment = Comment.create(comment_params)
  	if params[:comment][:user_id] != ""
  	user = User.find_or_create_by(:username => params[:comment][:user_id])
    comment.user_id = user.id
    comment.save
    end
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
