class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @cat_posts = @category.posts
  end
end
