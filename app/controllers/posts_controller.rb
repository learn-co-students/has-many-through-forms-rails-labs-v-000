class PostsController < ApplicationController
  def show

    @users = []
    @post = Post.find(params[:id])
    @post_comments = @post.comments
    @post_comments.each do |comment|
      @users << comment.user
    end
    @unique_commenters = @users.uniq

=begin

     <%= f.collection_select(:user_id, User.all, :id, :username, {:include_blank => true})%>
    user_id is method, User.all collection, value method is id, and text method is username, options hash has include blank
    remember :content is technically content_path and @post has more than one comment
    comments are made on the show page not the form and include_blank is in an unassigned option , blank by default
    should be in a key value hash and collection select doesn't need object in this case and the methods are called by symbols
    
    https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/collection_select
    
    comments form in creates a new comment object but not a new post 
    hidden field passes the id
    collection select is like the checkbox and fields for is an iterator for each text field
    Also, the select box that we use for the users needs to have a blank option –– check out the include_blank option for collection_select.
    see comments in comment model
=end
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
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
