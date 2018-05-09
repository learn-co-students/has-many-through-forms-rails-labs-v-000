class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @related_post_ids = Post_Category.where(category_id: params[:id])
    @related_post_ids.each do |post_cat|
      post = Post.find_by(post_cat.post_id)
      @related_posts << post
    end
  end



end
