require 'pry'
class CommentsController < ApplicationController

  def create
    # if params[:comment][:user_attributes][:username] == ""
    #   comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: params[:comment][:user_id])
    # else
    #   comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: params[:comment][:user_attributes][:username])
    # end
    comment = Comment.create(comment_params)
    redirect_to post_path(comment.post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end
end
