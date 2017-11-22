class CommentsController < ApplicationController

  def create
    #hacky, but works
    if !params[:comment][:user_id].blank?
      params[:comment][:user_attributes][:username] = User.find(params[:comment][:user_id]).username
    end
    comment =  Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
