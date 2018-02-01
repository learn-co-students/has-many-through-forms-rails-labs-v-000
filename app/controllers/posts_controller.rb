class PostsController < ApplicationController
  

  def index
    @posts = Post.all
  end

  def show
  
    @post = Post.find(params[:id])
   
  end

  def new
    @post = Post.create
    
    # @post.categories.build
    3.times do
      @post.categories.build(:name => "sample category")
    end
  end

  def create
    @post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
