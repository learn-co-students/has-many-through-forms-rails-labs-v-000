class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  #   "post"=>
  # {"title"=>"I love cookies.",
  #  "content"=>"C is for Cookie, that's good enough for me!",
  #  "category_ids"=>["3", ""],
  #  "categories_attributes"=>{"0"=>{"name"=>"delicious"}}}
    post = Post.create(post_params)

    redirect_to post
  end

  def update
    # "comments"=>{"users"=>"3", "comment_content"=>"asdfa wet34 twesgarsdfgcv"}
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, comments_attributes:[:content, :user], category_ids:[], categories_attributes: [:name])
  end
end

# 
# end
#
# def create
# #   "post"=>
# # {"title"=>"I love cookies.",
# #  "content"=>"C is for Cookie, that's good enough for me!",
# #  "category_ids"=>["3", ""],
# #  "categories_attributes"=>{"0"=>{"name"=>"delicious"}}}
#   @post = Post.create(post_params)
#
#   redirect_to post_path(@post)
# end
#
# def update
#   # "comments"=>{"users"=>"3", "comment_content"=>"asdfa wet34 twesgarsdfgcv"}
#   @post = Post.find(params[:id])
#   binding.pry
#   # if params[:username] create new user with username that belongs to the comment
#   # if [:comment_content], create new comment that belongs to the post
#   # "post"=>{"user_ids"=>["1", ""], "users_attributes"=>{"0"=>{"username"=>"Laura"}
#
#   # params[:post][:users_attributes] => {"0"=>{"username"=>"Laura"}}
#   # params[:post][:user_ids] =>["1", "2"...]
#   @post.update(post_params)
#
#   redirect_to post_path(@post)
