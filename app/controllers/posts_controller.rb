class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = User.all
    @comment = Comment.new 
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
    @categories = Category.all
  end

  def create
    #raise params.inspect
    post = Post.new(post_params)

    if post.save
      redirect_to post
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end

# What do I want params to look like?
#params => {:post => {:title => "", :content => "", :category_ids => [], :categories_attributes => {0 =>{:name => ""}, 1=> {:name => ""}, 2 => {:name => ""}}}
