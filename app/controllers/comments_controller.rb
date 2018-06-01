class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
    #belongs_to :post macro is creating the post method for comment object
    #allows whole post object understands the spec :id is called ... magic
    #consider what the attributes are for the parameters for post_path
    # comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
    #We have :user.id here and not a custom writer method because a comment only has one user (belongs_to relationship)
  end
end
