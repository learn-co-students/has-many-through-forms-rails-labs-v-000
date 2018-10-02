class CommentsController < ApplicationController

  def create
  #  raise params.inspect
    @comment = Comment.create(comment_params)
  #  post = Post.find(comment_params[:user_id])
  #  post.comments << @comment
  #  post.save

    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
