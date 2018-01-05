class CommentsController < ApplicationController


  def new
    @comment = user.build
  end


  def create
    #raise params:inspect
    comment = Comment.new(comment_params)
    if params[:comment][:user_id] != ""
      comment.user = User.find(params[:comment][:user_id])
    end
    comment.post = Post.find(params[:post][:id])
    comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
