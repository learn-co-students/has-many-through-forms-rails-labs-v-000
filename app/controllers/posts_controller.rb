class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
		@users = @post.users
		@users = @users.uniq { |usr| usr.username}.sort { |x, y| x.username <=> y.username}
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
		#raise params.inspect
		#binding.pry
		post = Post.create(post_params)
    redirect_to posts_path
  end

	def update
		
		username_ = params[:post][:users_attributes]["0"][:username].strip
		if username_ != ''
			new_user_ = User.new()
			new_user_.username = username_
			new_user_.save
			uid_ = new_user_.id		
		end
		
		params[:post][:comments_attributes]["0"][:user_id] = new_user_.id.to_s if new_user_
	
		post = Post.find_by_id(params[:id])	
		post.update(post_params)
		redirect_to post_path(post)
	end

	def edit
		@post = Post.find_by_id(params[:id])
	end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], comments_attributes: [:content, :user_id], categories_attributes: [:name])
  end
end
