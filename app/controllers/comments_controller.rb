class CommentsController < ApplicationController

  def create
    @post_id = Post.find(comment_params[:post_id]).id
    if comment_params[:user_attributes][:username] !=""
      @user_id = User.find_or_create_by(username: comment_params[:user_attributes][:username]).id
    else
      @user_id = User.find_or_create_by(id: comment_params[:user_id]).id
    end
    @comment = Comment.create(content: comment_params[:content], user_id: @user_id, post_id: @post_id)

    redirect_to user_path(@comment.user)
  end

  def show
    @comment = Comment.find(params[:id])
    @post = Comment.find(params[:id]).post
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :content, :user_username,:user_id, :user_attributes => :username)
  end
end
