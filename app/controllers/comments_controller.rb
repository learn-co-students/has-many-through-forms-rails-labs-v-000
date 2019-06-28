class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(comment_params)
    comment.user = User.find_or_create_by(username: params["comment"]["user_attributes"]["username"])
    comment.save
    redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
