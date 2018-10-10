class PostsController < ApplicationController

  def show
    @post = Post.find_by(params[:id])
    @users = User.find(unique_user_comments)
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

  def unique_user_comments
    @post.comments.group_by(&:user_id).keys
  end

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
