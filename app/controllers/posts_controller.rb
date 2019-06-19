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
    2.times do
      @post.categories.build
    end
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    byebug
    @post = Post.find(params[:id])
    @post = Post.update(post_params[:comment_attributes])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids: [], categories_attributes: [:name], comments_attributes: [])
  end

end
