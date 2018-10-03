class CommentsController < ApplicationController

  def create

    @post = Post.find(comment_params[:user_id])
    @comment = Comment.create(comment_params)
    @post.comments << @comment

  #  if comment_params[:user_id] == ""

      # @user = User.create(username:  )
    # else
  #  @user = User.find(comment_params[:user_id])
#  end
#  binding.pry
  #  @comment.user = @user

    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
