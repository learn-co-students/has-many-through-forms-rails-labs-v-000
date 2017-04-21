class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # raise @post.comments.size.inspect
    @comment = @post.comments.build
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    # raise post_params.inspect
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end

end
