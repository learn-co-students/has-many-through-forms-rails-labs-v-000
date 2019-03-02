class CommentsController < ApplicationController
  # binding.pry
  def create
    # binding.pry
    comment = Comment.create(comment_params)
    #  binding.pry
    redirect_to comment.post
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
