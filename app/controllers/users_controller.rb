class UsersController < ApplicationController

  	def show
    	@user = User.find(params[:id])
  	end

  	def create
  		raise params.inspect
  	end

  	


end


