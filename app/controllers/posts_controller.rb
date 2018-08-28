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
    post = Post.create(post_params)
    # #manually associating the categories method.
    #  if params[:post][:category_ids] != ""
    #   post.category_ids = params[:post][:category_ids]
    #  end

    #  if params[:post][:categories][:name] != ""
    #    category = Category.create(:name => params[:post][:categories][:name]  )
    #    post.categories << category
    #  end
    #   # save the new assocaitions
      post.save

    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
