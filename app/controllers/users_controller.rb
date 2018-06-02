class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]) unless @user.valid?
  end

end
