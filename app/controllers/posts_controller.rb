class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @unique_commentors = @post.comments.select("distinct user_id").map {|a| a.user}
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
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comments_attributes: [])
  end
end
