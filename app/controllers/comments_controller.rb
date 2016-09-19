class CommentsController < ApplicationController

  def create
    binding.pry
    comment = Comment.create(comment_params)
    comment.post = Post.find(params[:post_id])
    comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user:[:username])
  end
end
