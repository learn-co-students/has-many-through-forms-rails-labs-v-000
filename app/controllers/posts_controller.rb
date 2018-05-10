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

  private

  def post_params
    if params["post"]["categories_attributes_0"]["name"] != ""
      category = Category.create(name: params["post"]["categories_attributes_0"]["name"])
      params["post"]["category_ids"] <<  category.id
    end
    params.require(:post).permit(:title, :content, category_ids:[])
  end
end
