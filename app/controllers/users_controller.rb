class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
  end
  def destroy
    @user = User.destroy
  end
  def update
  end
  def edit
  end
end
