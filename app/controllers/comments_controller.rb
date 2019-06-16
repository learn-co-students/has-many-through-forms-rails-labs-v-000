class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    #@comment.user.build
  end

  def create
    #hash = {}
    #hash.merge(comment_params)
    #binding.pry
    #params[:comment][:user_attributes][:username] = @user.username
    binding.pry
    params[:comment][:user_id] == "" ? comment = Comment.create(comment_params2) : comment = Comment.create(comment_params)
    #comment = Comment.create(comment_params)
    binding.pry
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
    #user_attributes:[:username]
  end

  def comment_params2
    params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  end
end
