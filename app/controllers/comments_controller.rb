class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    comment_post = Post.find(comment_params[:user_id])
    comment_post.comments << @comment
    @comment.build_user(username: 'new user')

    #binding.pry
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
