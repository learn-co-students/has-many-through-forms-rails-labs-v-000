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
    #raise params.inspect
    post = Post.create(post_params)
    redirect_to post
  end

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |categories_attribute|
      category = Category.find_or_create_by(categories_attribute)
      self.categories << category
    end
  end

  ### From the video ###
  # def categories_attributes=(categories_hashes)
  #   categories_hashes.each do |index, category_attributes|
  #     category = Category.find_or_create_by(name: category_attributes[:name])
  #     self.post_categories.build(:category => category)
  #   end
  # end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
