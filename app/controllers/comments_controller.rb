class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to post_url(Post.find(1))
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
