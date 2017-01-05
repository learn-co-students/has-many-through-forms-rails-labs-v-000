class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
      if comment_params[:user_attributes][:username].empty?
        comment.user = User.find(comment_params[:user_id])
        comment.save
      end
    redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
