class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment = @post.comments.build
    @user = @comment.build_user
  end

  def index
    @posts = Post.all
  end 




  def new
    @post = Post.new
  end
  require 'pry'
  def create
    post = Post.create(post_params)
    # binding.pry
    redirect_to post
  end

  private

  def post_params
    # Avi hates this patternn for => [] :category_ids
    params.require(:post).permit(:title, :content, :category_ids => [], categories_attributes: [:name])
  end
end


# Post.find(4)










