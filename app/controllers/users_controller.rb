class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_commented_posts = []
    @user.comments.each do |comment|
      @user_commented_posts << comment.post
    end
  end

end
