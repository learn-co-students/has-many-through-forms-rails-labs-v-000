class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if params[:comment][:user_attributes][:username] != ""
      comment.user = User.create(:username => params[:comment][:user_attributes][:username])
    end
    comment.post_id = params[:post_id]
    comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
