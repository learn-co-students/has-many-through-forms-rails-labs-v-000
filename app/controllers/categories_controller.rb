class CategoriesController < ApplicationController

  

  def show
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(post_ids:[], posts_attributes: [:title, :content])
  end
  
end
