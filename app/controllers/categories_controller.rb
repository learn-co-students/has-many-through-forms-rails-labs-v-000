class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to category
  end

end
