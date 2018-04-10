# Illustration of this workspace is available here:
# https://i.imgur.com/sEiHNRX.png
class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

end
