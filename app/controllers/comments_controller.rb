class CommentsController < ApplicationController

  def create
    a = comment_params[:user_attributes]
    comment = Comment.create(comment_params)
    post = Post.find_by(id: comment_params[:post_id])
    post.comments << comment
    user = User.find_by(id: comment_params[:user_id])
    if !user
      user = User.find_by(:username => a[:username])
    end
    user.comments << comment
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
