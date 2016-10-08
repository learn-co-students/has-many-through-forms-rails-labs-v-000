class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def new
    @category = Category.new
  end

  def create
  end

  def show
    binding.pry
    @category = Category.find(params[:id])
  end
end
