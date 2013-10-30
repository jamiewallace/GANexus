class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
    redirect_to edit_user_path
  end

  def create
    @user = User.create params[:user]
    redirect_to users_path
  end

  def update
    @user = User.find params[:id]
    # redirect_to users_path
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
  end


end