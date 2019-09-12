class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @commenters = @post.comments.collect {|c| c.user}.uniq
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    # binding.pry
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
