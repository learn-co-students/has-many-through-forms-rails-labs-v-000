class CommentsController < ApplicationController


  def create
    if !params[:user_attributes][:username].empty?
      user = User.create(username: params[:user_attributes][:username])
      params[:comment][:user_id] = user.id
    end
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
