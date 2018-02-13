class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    # binding.pry
    redirect_to comment.post
  end

  # def update
  #   comment = Comment.find_or_create_by(params[:id])
  #   comment.update(content: comment_params[:content], user_id: comment_params[:user_id])
  #   binding.pry
  #   redirect_to comment.post
  # end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
