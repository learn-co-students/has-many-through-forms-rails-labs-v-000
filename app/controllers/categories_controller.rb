class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def create
    binding.pry
  end
end
