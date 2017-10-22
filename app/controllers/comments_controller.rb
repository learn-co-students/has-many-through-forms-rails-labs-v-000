class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
  end
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.create(comment_params)
    #raise comment_params.inspect
    #byebug
    redirect_to @comment.post
    #supplied comment's user's foreign key id argument
  end

  private


  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :username, user_attributes:[:username])
  end
end
