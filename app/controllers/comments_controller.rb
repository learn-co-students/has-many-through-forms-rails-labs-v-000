class CommentsController < ApplicationController

  def create
    
    if comment_params[:user_attributes][:username] == ""
       new_hash= comment_params.delete_if {|key,value| key == "user_attributes"}
       comment = Comment.create(new_hash)
       redirect_to comment.post
    else
      comment = Comment.create(comment_params)
      redirect_to comment.post
    end
  end

  private

  def comment_params
    
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
