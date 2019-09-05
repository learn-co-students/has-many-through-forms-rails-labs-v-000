class CommentsController < ApplicationController

  def create

    comment = Comment.create(comment_params)
    #binding.pry
    if comment_params[:user_id]!=""
      #binding.pry
      comment.user_id=comment_params[:user_id]
      comment.save
    end

    #if comment_params[:user_attributes][:username]
    #  comment.user_id=User.create(comment_params[:user_attributes][:username]).id
    #  comment.save
    #end

    #comment.save
    #comment.save
    puts comment_params

    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
