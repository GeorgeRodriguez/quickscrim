class UsersController < ApplicationController

  def new
  end

  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to QuickScrim!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      #handles successful update of account info
      flash[:success] = "Updated Profile Info"
      redirect_to @user
    else
      render 'edit'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
