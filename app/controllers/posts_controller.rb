class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
    @user = User.new
    @comment.user = @user
    # binding.pry
    # For an example of how to do it all in the view, rather than controller, see https://github.com/morgvanny/has-many-through-forms-rails-labs-v-000/blob/master/app/views/posts/_post.html.erb
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

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
