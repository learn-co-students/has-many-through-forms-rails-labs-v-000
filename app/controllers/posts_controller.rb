require 'pry'
class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = User.all
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def update
    if params[:post][:users_attributes]["0"][:username].empty?
      user = User.find(params[:post][:comments_attributes]["0"][:user_id])
      params[:post][:users_attributes]["0"][:username] = user.username
    end
    @post = Post.find(params[:id])
    @post.update (post_params)
    redirect_to post_path(@post)
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[],
      categories_attributes: [:name],
      comments_attributes: [:user_id, :content],
      users_attributes: [:username])
  end
end
