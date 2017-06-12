class CommentsController < ApplicationController

  def index
  	#raise params.inspect
  	@comments = Comment.all

  end

  def new 
  	@comment = Comment.new
  	@user = User.new


  end

  def create
        
    @comment = Comment.create(comment_params)     
    
    if comment_params[:user_attributes][:username] == ""
      @user = User.find_or_create_by(comment_params[:user_id])      
    else 
      @user = User.create(:username => comment_params[:user_attributes][:username])  
    end 
      
    @comment.user = @user
    @comment.save

    #raise params.inspect
    
    redirect_to comment_path(@comment)
    
  end

  def show

  	@comment = Comment.find(params[:id])
    @user = User.find(@comment.user_id) ## works with new user
    
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end


  