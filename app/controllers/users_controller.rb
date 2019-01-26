class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @comment = @user.comments.build

  end

end
