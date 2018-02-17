class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new 
    @categories = Category.all   
    # can add @post.categories.build(name: =>?? )
  end

  def create
    @post = Post.new(post_params)  
   
    if @post.save
      redirect_to post_path(@post) 
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end 

  def update
    if @post.update(post_params)
      render :show
    else
      render :edit
    end
  end 

  def destroy 
    @post.destroy
    redirect_to :posts 
  end 

  private

  def set_post
    @post = Post.find(params[:id])
  end 

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end


