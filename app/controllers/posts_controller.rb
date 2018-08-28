class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @post.comments.each do |comment|
      @array = []
      @array << comment.user_id
      @array.uniq
    end
    if @array != nil
      @array.delete_if do |id|
        id == 0
      end
      @users = []
      @array.each do |id|
        @users << User.find(id)
      end
    end
    @comment = Comment.new
    User.all.each do |user|
      @all_users = []
      @all_users << user.id
    end
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
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
