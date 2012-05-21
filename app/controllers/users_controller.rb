class UsersController < ApplicationController
  
  def new
    @user = User.new
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
