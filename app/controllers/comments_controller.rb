class CommentsController < ApplicationController

  def create
    # if params[:comment][:user_attributes][:username].empty?
    #   comment = Comment.create(comment_params_with_existing_user)
    # else
    #   comment = Comment.create(comment_params_with_new_user)
    # end
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  # def comment_params_with_new_user
  #   params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  # end
  #
  # def comment_params_with_existing_user
  #   params.require(:comment).permit(:content, :post_id, :user_id)
  # end
  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

end
