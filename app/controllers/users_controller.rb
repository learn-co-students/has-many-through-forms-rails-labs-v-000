class UsersController < ApplicationController
  #has_many :comments
  
  def show
    @user = User.find(params[:id])
  end

end
