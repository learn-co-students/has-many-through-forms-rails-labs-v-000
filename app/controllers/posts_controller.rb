class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @post_comments = @post.comments
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(
    :title,
    :content,
    category_ids:[],
    categories_attributes: [:name],
    user_ids:[],
    users_attributes: [:name, :comment_content],

    )
  end
end
