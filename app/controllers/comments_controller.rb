class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @user = User.find_by(params[:comment][:user_id])
    @post = Post.find_by(params[:comment][:post_id])
    #@comment.post.build(:comment => @comment)
    #binding.pry
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
