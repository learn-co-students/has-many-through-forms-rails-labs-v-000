class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    comment.save
    redirect_to posts_path(@post.comment)
  end

  # def create
  #   comment = Comment.create(comment_params)
  #     comment.save if comment.user.unique?
  #     redirect_to comment.post
  #   else
  #     "You cannot comment more than once"
  #   end
  # end
  #
  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :user_attributes:[:username])
  end
end
