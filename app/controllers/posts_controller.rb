class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    #@user = User.find(params[:id])
    #binding.pry
    #@comment.save
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    #binding.pry
    3.times do
      @post.categories.build
    end
    #raise @post.inspect
    #https://www.pluralsight.com/guides/ruby-ruby-on-rails/ruby-on-rails-nested-attributes
  end

  def create
    # raise params.inspect
    post = Post.create(post_params)
      redirect_to post
    #binding.pry
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [], :categories_attributes => [:name])
  end
end
