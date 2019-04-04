class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    binding.pry
    @comment = Comment.create(comment_params)
    binding.pry

    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    binding.pry
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
