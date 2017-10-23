class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build()
    @user = @comment.build_user
    # binding.pry
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
    @post.categories.build
    @post.categories.build
  end

  def create
    # raise params.inspect
    post = Post.create(post_params)
    # raise params.inspect
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
