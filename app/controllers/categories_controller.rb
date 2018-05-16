class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @related_post_ids = PostCategory.where(category_id: params[:id])
    #binding.pry
    @related_post_ids.each do |post_cat|
      post = Post.find_by(post_cat.post_id)
      @category.posts << post
    end
  end



end
