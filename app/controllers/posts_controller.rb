class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @comments = @post.comments
    redirect_to @post
  end

  def update
   
   # @post = Post.find(params[:id])
   # @user = User.find_or_create_by(update_params[:users_attributes])
   # comment = Comment.find_or_create_by(content: update_params[:comment_content])
   #@post.comments << comment
   #@post.users << @user
   #comment.user = @user
   # redirect_to @post 
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end

  #def update_params
  # params.require(:post).permit(:comment_content, :users , users_attributes: [:username])
  #end
end
