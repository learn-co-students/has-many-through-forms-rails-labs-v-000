class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @comment.user_build
  end

  def create
    # binding.pry
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id, user_attributes: [:username])
  end

end
