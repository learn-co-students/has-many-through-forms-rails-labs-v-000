class CommentsController < ApplicationController

  def create
  	# raise params.inspect
  	# "comment"=>{"content"=>"One last comment?", "user_id"=>"1", "user_attributes"=>{"username"=>"Last Knight"}, "post_id"=>"1"}
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
