class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @post_categories = @post.categories
    @post_comments = @post.comments

    @unique_commentors = @post_comments.collect { |c| c.user }.uniq

    @comment = Comment.new
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
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :show
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comments_attributes: [:content, :user_id])
  end
end
