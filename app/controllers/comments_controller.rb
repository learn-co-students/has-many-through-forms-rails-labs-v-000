class CommentsController < ApplicationController

  def create
    #check regular params hash to see if user_attributes[username] is blank
    #if it is, user user_id to create comment

    if comment_params[:user_attributes][:username].empty?
      @comment = Comment.create(content: comment_params[:content], user_id: comment_params[:user_id], post_id: comment_params[:post_id])
    else
      @comment = Comment.create(content: comment_params[:content], user_attributes: comment_params[:user_attributes], post_id: comment_params[:post_id])
    end
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
