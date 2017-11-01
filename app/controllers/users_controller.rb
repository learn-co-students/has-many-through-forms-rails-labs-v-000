class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = []
    Comment.all.each do |c|
      if c.user_id = @user.id
        @posts << Post.find(c.post_id)
      end
    end
  end

end
