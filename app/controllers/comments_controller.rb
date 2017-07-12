class CommentsController < ApplicationController

  def create
    if comment_params[:user_attributes][:username] == ""
      user = User.find_by_id(comment_params[:user_id])
      post = Post.find_by_id(comment_params[:post_id])
      comment = Comment.create(content: comment_params[:content], post: post, user: user)
    else
      post = Post.find_by_id(comment_params[:post_id])
      comment = Comment.create(content: comment_params[:content], post: post)
      comment.user_attributes=(comment_params[:user_attributes])
    end
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

end
