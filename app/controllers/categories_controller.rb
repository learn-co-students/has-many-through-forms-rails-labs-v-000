class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.find_or_create_by(cat_params)
  end
end
