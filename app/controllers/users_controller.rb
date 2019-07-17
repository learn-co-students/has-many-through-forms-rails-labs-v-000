# require 'pry'

# class UsersController < ApplicationController

#   def show
#     @user = User.find(params[:id])
#     @posts = @user.posts 
#     # binding.pry 
#   end

#   def index
#     @users= User.all 
#   end 

# end

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

end