class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # binding.pry
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # binding.pry
  end

  def create
    post = Post.create(post_params)
    # binding.pry
    redirect_to post
  end

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |categories_attribute|
      category = Category.find_or_create_by(categories_attribute)
      self.categories << category
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
