class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = @post.comments.collect {|c| c.user }.uniq
    @user = User.new
    @comment = Comment.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @comment = Comment.new
    @user = User.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], user_attributes: [:username, :email])
  end
end
