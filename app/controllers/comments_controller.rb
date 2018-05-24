class CommentsController < ApplicationController

  def create
    #raise params.inspect
    comment = Comment.create(comment_params)
    @post = Post.find(comment_params[:post_id])
    @post.users.create(comment_params[users:[:username]])
    #user = User.create(comment_params[user_attributes:[:username]])
    #user.comments << comment
    redirect_to post_path(comment.post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
