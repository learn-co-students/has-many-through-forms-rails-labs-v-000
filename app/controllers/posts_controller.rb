class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #binding.pry
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
#binding.pry
    redirect_to post
  end

  private

  def post_params
    #category_ids accepts the checkboxes from new form
    #categories_attributes accepts the creation of a new category on the new form
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
