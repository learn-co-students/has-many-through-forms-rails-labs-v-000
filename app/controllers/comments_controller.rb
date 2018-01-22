class CommentsController < ApplicationController

  def create
    user=User.create_or_find_by(username: comment_params["user"]["username"])
    comment = Comment.create(comment_params)
    comment.user_id=user_id
    comment.save
    puts comment_params

    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
