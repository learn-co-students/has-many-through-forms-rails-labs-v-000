class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @comment.user.build
  end
  
  def create
    comment = Comment.create(comment_params)
    user = User.find_or_create_by(username: params[:comment][:user_id])
    comment.user = user
    #binding.pry
    comment.user.username = comment_params["user_attributes"]["username"]
    user.comments << comment
    redirect_to user_path(user)
  end

  def show
    @comment = Comment.find(params[:id])
    @post = Comment.find(params[:id]).post
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, user_attributes: [:username, :email])
  end
end
