class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # @post.comments.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # if @post.categories.last.try(:name)
    #   @post.categories.build
    # end
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    post = Post.update(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
