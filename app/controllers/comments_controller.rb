class CommentsController < ApplicationController

  def create
    if params[:comment][:user_attributes][:username].empty?
      @comment = Comment.create(comment_params_2)
    else
      @comment = Comment.create(comment_params_1)
    end

    redirect_to post_path(@comment.post)
  end

  private

    def comment_params_1
      params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
    end

    def comment_params_2
      params.require(:comment).permit(:content, :post_id, :user_id)
    end

end
