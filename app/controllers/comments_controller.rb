class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if !comment.post.nil?
      redirect_to comment.post
    end
  end

  private

  def comment_params
    if !params['comment']['user_attributes']['username'].empty?
      params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
    end
    if !params['comment']['user_id'].empty?
      params.require(:comment).permit(:content, :post_id, :user_id)
    end    
  end
end
