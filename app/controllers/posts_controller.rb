class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user = User.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
      
    post = Post.create(post_params)
    comment = Comment.create(comment_params)
    user = User.find_or_create_by(id: user_id)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end

  def comment_params
    params.require(:comment).permit(:content,:user_id, :post_id)
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
