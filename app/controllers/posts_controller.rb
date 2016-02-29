class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
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

  # no need  for the update method - we are creating comments  and stuff in the
  # posts#show method, not editing the post
  # def update
  #   @post = Post.find(params[:id])
  #   @post.update(post_params)
  #   redirect_to @post
  # end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
