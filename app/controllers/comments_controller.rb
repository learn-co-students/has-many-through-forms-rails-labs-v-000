class CommentsController < ApplicationController

  def create
    byebug
    post = Post.find(params[:post_id])
    comment = post.comments.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
