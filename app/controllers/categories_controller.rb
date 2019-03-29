class CategoriesController < ApplicationController

  def show
    #binding.pry
    @category = Category.find(params[:id])
  end
end
