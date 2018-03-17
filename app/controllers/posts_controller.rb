class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
		@post= Post.new
		@post.comments.build(content: params[:content])
	 @post.comments.build(user_id: params[:user_id])
   @comments = Comment.all
    @post.post_categories.build(category_id: params[:category_id])
		@categories = Category.all
   #  @post.users.build(username: params[:username])
   #  @users= Users.all
	end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
