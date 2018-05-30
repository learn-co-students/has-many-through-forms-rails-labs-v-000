class CommentsController < ApplicationController


  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(comment_params)
    comment.post = Post.find_by(params[:post_id])
    comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
