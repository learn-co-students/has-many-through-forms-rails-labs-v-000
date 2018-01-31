class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @comment.build_user
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to comment_path(@comment)
  end

  def show
    @comment = Comment.find(params[:id])
    @user = @comment.user
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id, user_attributes: [:username])
  end
end
