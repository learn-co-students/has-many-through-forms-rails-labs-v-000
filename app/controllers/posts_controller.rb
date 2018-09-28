class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
    @array = []
    @post.comments.each do |comment|
      @array << comment.user_id
    end
    @array = @array.uniq

    if @array != nil
      @users = []
      @array.each do |id|
        @users << User.find(id)
      end
    end
    @comment = Comment.new
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
