class CommentsController < ApplicationController

  def create
    #binding.pry
    if params[:comment][:user_attributes][:username] == ""
      comment = Comment.create(comment_params_with_id)
    else
      comment = Comment.create(comment_params)
    end
    redirect_to post_path(comment.post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  end

  def comment_params_with_id
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
