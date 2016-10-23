require 'pry'

class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
# binding.pry
  #   @post = Post.find(params[:id])
  #   if params.include?([:comment]) && !params[:comment].empty?
  #     @user = User.find_or_create_by(username: params[:comment][:user_attributes_username])   
  #     @comment = Comment.create(
  #       user_id: @user.id,
  #       content: params[:comment][:content],
  #       post_id: @post.id
  #       )
  #   end
  # end

    @post = Post.find(params[:id])
    if params[:comment] && params[:comment][:user_id]
      @comment = Comment.create(
        user_id: params[:comment][:user_id],
        content: params[:comment][:content],
        post_id: @post.id
        )
    end
    if params[:comment] && params[:comment][:user_attributes_username]
      @user = User.find_or_create_by(username: params[:comment][:user_attributes_username]) 
      @comment = Comment.create(
        user_id: @user.id,
        content: params[:comment][:content],
        post_id: @post.id
        )
    end
  end

  def new
    @post = Post.new
  end

  def create
 # binding.pry
    @post = Post.create(post_params)
    if @post.save
      redirect_to post_path(@post)
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params) 

    if @post.save
      redirect_to posts_path(@post)
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [], :categories_attributes => [:name])
  end
end
