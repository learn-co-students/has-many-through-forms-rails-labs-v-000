require 'pry'
class CommentsController < ApplicationController

  def create

    @comment = Comment.create
    @comment.content = params[:comment][:content]
    post = Post.find_by(id: params[:comment][:post_id])
    @comment.post = post
    post.comments << @comment
    if params[:comment][:user_attributes][:username] != ""
      user = User.find_or_create_by(username: params[:comment][:user_attributes][:username])
      @comment.user = user
      user.comments << @comment
    else
      user = User.find_by(id: params[:comment][:user_id])
      @comment.user = user
      user.comments << @comment
    end
    @comment.save
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
