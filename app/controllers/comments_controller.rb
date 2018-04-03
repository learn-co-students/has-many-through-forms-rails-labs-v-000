class CommentsController < ApplicationController

  def create
       # {"utf8"=>"✓", "comment"=>{"user_id"=>"1", "post_id"=>"1", "user_attributes"=>{"username"=>""}, "content"=>"great post!"}, "commit"=>"Create Comment", "controller"=>"comments", "action"=>"create"}
    comment = Comment.create(comment_params)

    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(
      :content,
      :post_id,
      :user_id,
      user_attributes: [:username]
      )
  end
end
