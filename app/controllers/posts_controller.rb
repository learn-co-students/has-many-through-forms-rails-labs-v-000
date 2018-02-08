require 'pry'
class PostsController < ApplicationController
  def show
    #binding.pry
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user_array = []
    @post.users.each do |u|
      @user_array << u.id
    end
      @user_array = @user_array.uniq
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


  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
