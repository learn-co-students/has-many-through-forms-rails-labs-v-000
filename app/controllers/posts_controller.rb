class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [], categories_attributes: [:name])
  end
end

#New Category:<%= f.fields_for :categories, @post.categories.build do |categories_fields| %>
#    <%= categories_fields.text_field :name %>
#  <% end %>

#  <%= f.collection_select :comment_ids, Comment.all, :id, :content %>
