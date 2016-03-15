class CommentsController < ApplicationController

  def create    
    @comment = Comment.new(comment_params)

    if @comment.valid?
      @comment.save 
    end

    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username, :email])
  end
end
