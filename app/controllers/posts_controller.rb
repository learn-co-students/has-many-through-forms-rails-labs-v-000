require 'pry'
class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @unique_users = @post.users.uniq
    #binding.pry
  @post.comments.build
  @post.save
    #  redirect_to comment.post
    #end
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

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
