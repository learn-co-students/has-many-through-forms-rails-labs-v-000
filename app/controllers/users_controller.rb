class UsersController < ApplicationController

 
  def index
    @users = User.all
  end

  def new
    @user = User.new 
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    #others to call from db? 
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else 
      render :new 
  	end 
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :show
    else
      render :edit
    end
  end 

  def destroy 
    @user = User.find(params_id)
    @user.destroy
    redirect_to :user
  end 

  private

  def post_params
    params.require(:user).permit(:name )
  end

end