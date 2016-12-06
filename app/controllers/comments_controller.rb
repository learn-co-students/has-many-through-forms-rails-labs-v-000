class CommentsController < ApplicationController

  def create
    @comment=Comment.build(comment_params)
    @post = Post.find(params[:post_id])
    redirect_to @post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, users_attributes: [:username])
  end
end
