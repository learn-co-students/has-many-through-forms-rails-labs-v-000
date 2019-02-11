class CommentsController < ApplicationController

  def create
    #if theres a new username entered and no existing user selected
    # if !params[:comment][:user_attributes][:username].empty? && params[:comment][:user_id].empty?
    #   @user = User.find_or_create_by(username: params[:comment][:user_attributes][:username])
    #   @comment = Comment.create(comment_params)
    #   @user.comments << @comment
    #   @user.save
    #   redirect_to post_path(@comment.post)
    # # or if theres no username entered and theres an existing user selected
    # elsif params[:comment][:user_attributes][:username].empty? && !params[:comment][:user_id].empty?
    #   @user = User.find_by(id: params[:comment][:user_id])
    #   @comment = Comment.create(comment_params)
    #   @user.comments << @comment
    #   @user.save
    #   redirect_to post_path(@comment.post)
    # # if the user enters a new username and selects an existing user
    # elsif !params[:comment][:user_attributes][:username].empty? && !params[:comment][:user_id].empty?
    #   "either choose an existing user or add a new one"
    #   redirect_to post_path(@comment.post)
    # end
    @comment = Comment.create(comment_params)

    redirect_to post_path(@comment.post)
    

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

end
