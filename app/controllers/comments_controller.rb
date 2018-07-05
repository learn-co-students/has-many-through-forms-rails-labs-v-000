class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    post = Post.new
    comment.post_id = @post.id
    binding.pry
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
