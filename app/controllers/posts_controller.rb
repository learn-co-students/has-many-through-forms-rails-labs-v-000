class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @post.comments.build
    #@post.users.build
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    @post = Post.find(params[:id])
    @post.comments.build
    @post.users.build
    binding.pry
    if @post.update(post_params)
      redirect_to post_path(@post)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_ids, category_ids:[], categories_attributes: [:name], comments_attributes: [:content, :post_id, :user_id])
  end
end
