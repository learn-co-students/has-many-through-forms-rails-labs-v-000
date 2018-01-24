class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(@category).permit(:name)
  end
end
