class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find_by(params[:post_id])
    comment = @post.comments.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
