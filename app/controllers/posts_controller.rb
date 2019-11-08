class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #binding.pry
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    if params[:post][:categories_attributes]["0"][:name] != ""
      @category= Category.create(name: params[:post][:categories_attributes]["0"][:name])
      params[:post][:category_ids]<< @category.id
    end
    params.require(:post).permit(:title, :content, category_ids:[])
  end
end
