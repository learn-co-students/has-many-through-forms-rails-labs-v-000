class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #@comment=Comment.new
    #@comment.post_id=@post.id
    #@comment.user=User.new
    #@comment.user.build
    #puts @comment
    #puts @post.title
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
    #puts post_params
    redirect_to post
  end

  private

  def post_params
     params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
   end
end
