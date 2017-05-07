class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    #I DONT UNDERSTAND THIS
    if params.require(:comment).permit(user_attributes:[:username])[:user_attributes][:username]=="" then
       print User.find(params.require(:comment).permit(:user_id)[:user_id]).username
       comment.user=User.find(params.require(:comment).permit(:user_id)[:user_id])
       comment.save
      end
      #I DONT UNDERSTAND THIS
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
