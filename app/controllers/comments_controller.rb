class CommentsController < ApplicationController

  def create
    user = User.find_by(id: comment_params[:user_id])
    if !user.nil?
      @comment = Comment.create(:user_id => user.id, :post_id => params[:comment][:post_id], :content => params[:comment][:content])
    else
      @comment = Comment.create(comment_params)
    end
    @user = @comment.user
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :username, user_attributes: [:username])
  end
end
