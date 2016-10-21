class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @unique_users = @post.comments.select("distinct user_id").map {|x| x.user}
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
    post = Post.create(post_params)
    redirect_to post
  end

  # SQL that fires when creating new post: 
  # Creating a new row in our posts table with title and content
  # INSERT INTO "posts" ("title", "content", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "New Post"], ["content", "Some great content!!"], ["created_at", "2016-01-15 21:25:59.963430"], ["updated_at", "2016-01-15 21:25:59.963430"]]
  # Create a row in our post_categories table for each ID number that was store in our category_ids array 
  # INSERT INTO "post_categories" ("category_id", "post_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["category_id", 2], ["post_id", 6], ["created_at", "2016-01-15 21:25:59.966654"], ["updated_at", "2016-01-15 21:25:59.966654"]]
  # INSERT INTO "post_categories" ("category_id", "post_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["category_id", 3], ["post_id", 6], ["created_at", "2016-01-15 21:25:59.968301"], ["updated_at", "2016-01-15 21:25:59.968301"]]

  private

  def post_params
                                                                    # Telling it to expect a key of name inside for the category's name
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], comments_attributes: [])
  end
end
