class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post_ids = []
    @user.comments.each do |comment|
      @post_ids << comment.post_id
    end
    binding.pry
    @post_ids.each do |post_id|
      post = Post.find_by(post_id)
      @posts << post
    end

  end

end
