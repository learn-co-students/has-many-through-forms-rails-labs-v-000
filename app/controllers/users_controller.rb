class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

  end

  def create
    @user = User.create(user_params)
    redirect_to comment.post
  end


    private

    def user_params
      params.require(:user).permit(:username)
    end

end
