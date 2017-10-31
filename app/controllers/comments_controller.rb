class CommentsController < ApplicationController

  def create
    # binding.pry
    if params[:comment][:user_attributes][:username].empty?
      comment = Comment.create(comment_params_with_existing_user)
    else
      # binding.pry
      comment = Comment.create(comment_params_with_new_user)
    end
    redirect_to comment.post
  end

  private

  def comment_params_with_new_user
    params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  end

  def comment_params_with_existing_user
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end
