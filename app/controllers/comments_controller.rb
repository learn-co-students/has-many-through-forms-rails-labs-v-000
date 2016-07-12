class CommentsController < ApplicationController

  

  def create
    @post = Post.find(params[:comment][:post])
    comment = Comment.create(comment_params)
    comment.post = @post
    redirect_to post_path(@post)
  end

  def show

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
