class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if !params[:categories_attributes][:name].empty?
      category = Category.create(name: params[:categories_attributes][:name])
      if params[:post][:category_ids] == nil
        params[:post][:category_ids] = [category.id]
      else
        params[:post][:category_ids] << category.id
      end
    end
    post = Post.create(post_params)
    if params[:post][:category_ids] != nil
      params[:post][:category_ids].each do |categ_id|
        post_category = PostCategory.create(category_id: categ_id, post_id: post.id);
      end
    end
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
