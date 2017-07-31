class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    2.times @post.comments.build
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    @post = Post.find(params[:id])
    @comment = Comment.create(params[:comments_attributes])
    @post.comments << @comment
    redirect_to @post
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, comment_ids:[], comments_attributes: [:user, :content], category_ids:[], categories_attributes: [:name])
  end
end
