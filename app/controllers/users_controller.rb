class UsersController < ApplicationController

    def create
        binding.pry
        user = User.new(user_params)
        redirect_to user
    end

    def show
      @user = User.find(params[:id])
    end
end
