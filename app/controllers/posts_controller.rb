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

		post = Post.find_by_id(params[:id])	
		post.update(post_params)
		redirect_to post_path(post)
	end

	def edit
		@post = Post.find_by_id(params[:id])
	end

  private

  def post_params
    params.require(:post).permit(:title, :content, comments_attributes: [:content, :user_id])
  end
end
