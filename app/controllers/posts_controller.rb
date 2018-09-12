class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # below is for the fields_for form
    @post.categories.build #instantiate the category in the controller so we can get a field for the form

    # if you want to add 3 field forms
    # 3.times do
    #   @post.categories.build(:name => "Sample Category") <= :name is the placeholder
    # end
  end

  def create
    # raise params.inspect
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
