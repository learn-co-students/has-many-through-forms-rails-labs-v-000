class PostsController < ApplicationController
  
  def show

    @post = Post.find_or_create_by(params[:id])
    @comment = Comment.new
    
    #@user = User.new
    #@users = User.all

    #raise params.inspect

  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

  end

  def create
    post = Post.create(post_params)

    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], user_ids:[], user_attributes: [:username])
  end
end
