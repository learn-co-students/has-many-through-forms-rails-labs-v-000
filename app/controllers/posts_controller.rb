class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @post.comments.build
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

  def update
    raise params.inspect
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comment_ids:[], comments_attributes: [:content, :post_id, :user_id])
  end
end
