class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:sucess] = "Welcome to the Sample App!"
      redirect_to @user
     else 
       render 'new'
    end
  end
end
