class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = @post.comments.map(&:user)
    @comment = @post.comments.build
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    # raise params.inspect
    # "post"=>{"title"=>"The new post", "content"=>"Llorem ipsum isn't better", "category_ids"=>[""], "categories_attributes"=>{"name"=>"New cat as category"}}
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
