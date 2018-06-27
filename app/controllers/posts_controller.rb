class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user = User.new
    @comment.post_id = @post.id
    @comment.user_id = @user.id
    @comments = @post.comments.all
    @users = User.all
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comment_id:[], comments_attributes: [:content])
  end
end
