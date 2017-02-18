require 'pry'

class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if comment_params[:user_attributes][:username].present?
        comment.user=User.find_or_create_by(username: comment_params[:user_attributes][:username])
        # comment.user_attributes = (comment_params[:user_attributes])
        comment.save
    end
    # binding.pry
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
