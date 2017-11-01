class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #binding.pry
    @comment = Comment.new
    @comments = []
    @users = []
     Comment.all.each do |c|
        if c.post_id == @post.id
          @comments << c
          if !@users.include?(c.user_id)
            @users << c.user_id
          end
        end
      end

      @categories = @post.categories

    # binding.pry
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #binding.pry
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
