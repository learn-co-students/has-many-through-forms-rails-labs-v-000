class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @unique_users = []
    @post.comments.each do |comment|
      #binding.pry
      user = User.find(comment.user)
      if @unique_users.exclude?(user)
        @unique_users << user
      end
    end
    @unique_users
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
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], user_attributes: [:username])
  end
end
