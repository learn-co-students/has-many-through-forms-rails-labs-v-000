class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # @comment = @post.comments.build
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to post_path(@post)
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    if @post.save
      redirect_to post_path(@post)
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [], :categories_attributes => [:name])
  end
end
