class CommentsController < ApplicationController

  def create
    #raise params.inspect
    #{"comment"=>{"content"=>"test", "user_id"=>"1"}, "commit"=>"Create Comment", "controller"=>"comments", "action"=>"create"}
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
