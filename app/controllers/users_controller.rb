class UsersController < ApplicationController
  def new
    @title = 'Sign Up'
    @user = User.new
    @status = false
  end

  def show
    @user = User.find(params[:id])
    @status = true
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      @title = 'Sign Up'
      render 'new'
    end
  end
end