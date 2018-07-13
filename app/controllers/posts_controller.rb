class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = @post.comments.map{|comment| comment.user}.uniq
    @comment = Comment.new(post_id: params[:id])
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
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comment_ids: [], comments_attributes: [:content])
  end
end
