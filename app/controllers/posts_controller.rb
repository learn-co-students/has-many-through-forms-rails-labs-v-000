class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.build_user
    
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
    @post.categories.build 
  end

  def create
    binding.pry
    post = Post.create(post_params)
    # post.title = post_params['title']
    # post.content = post_params['content']
    # post.save
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids: [],
    categories_attributes: [:name])
  end
end
