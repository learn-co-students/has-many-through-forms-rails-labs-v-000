class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
		@post= Post.new

	end

  def create
    post = Post.create(post_params)
   #  @post.comments.build(content: params[:content])
   # @post.comments.build(user_id: params[:user_id])
   # @post.comments.build(post_id: params[:post_id])
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
