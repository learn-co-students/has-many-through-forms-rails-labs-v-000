class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
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

  def update
    post = Post.find(params[:id])
    comment = Comment.new
    comment.user = User.find(post_params[:comments][:user])
    comment.content = post_params[:comments][:content]
    post.comments << comment
    post.save
    redirect_to post_path(post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comments_attributes: [:user, :content] )
  end
end
