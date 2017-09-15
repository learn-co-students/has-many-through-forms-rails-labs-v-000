class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = @post.comments.build
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # raise params.inspect
    # if params[:category_ids].nil? && params[:categories_attributes].nil?
      # post = Post.create(title: post_params[:title], content: post_params[:content])
    # else
      post = Post.create(post_params)
    # end
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
