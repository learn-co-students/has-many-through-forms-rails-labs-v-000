class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end
end

private

def post_params
  params.require(:post).permit(:title, :content, :category_ids => [], categories_attributes: [:name])
end