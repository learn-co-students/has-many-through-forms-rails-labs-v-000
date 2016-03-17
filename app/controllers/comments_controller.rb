require 'pry'
class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end


    # if comment_params[:user_attributes][:username].empty?
    #   comment.user_id = comment_params[:user_id]
    #   comment.save
    # else
    #   comment.build_user(comment_params[:user_attributes])
    #   comment.save
    # end