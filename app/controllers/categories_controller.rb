class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @cateogry_posts = @category.posts 
  end
end
