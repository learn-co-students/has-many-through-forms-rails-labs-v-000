require 'pry'

class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params[:comment][:user_attributes].reject! { |k,v| v == "" }
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
