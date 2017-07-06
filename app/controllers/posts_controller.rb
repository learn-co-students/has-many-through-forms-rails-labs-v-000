require 'pry'
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
      #binding.pry
    post = Post.create(post_params)
    redirect_to post
  end
  def update
    @post = Post.find(params[:id])
    redirect_to post
  end

  private

  def post_params
     params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comment: [])
  end

end
