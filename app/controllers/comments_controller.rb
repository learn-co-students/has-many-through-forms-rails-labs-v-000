class CommentsController < ApplicationController

  

  def create
    @post = Post.find(params[:comment][:post])
    comment = Comment.create(comment_params)
    comment.post = @post
    redirect_to comment_path(comment)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
