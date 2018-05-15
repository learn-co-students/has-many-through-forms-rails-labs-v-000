class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #comments has a user_id and post_Id column.

  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.comments.build
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
