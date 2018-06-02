class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # @category = @post.categories.build
    @comment = @post.comments.build
    #Why would I use build here and not create? Because were are only using test-driven data?
    @user = @comment.build_user
    #for belongs_to relationship
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
