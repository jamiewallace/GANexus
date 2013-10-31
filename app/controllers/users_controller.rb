class UsersController < ApplicationController
  # load_and_authorize_resource

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
  end

  def create
    @user = User.create params[:user]
      if @user.save
        @user.authenticate(params[:user][:password])
        session[:user_id]= @user.id
        redirect_to users_path, notice: 'Successfully created'
      else
      render 'new'
    end
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:user]
      redirect_to user_path, notice: 'Successfully updated'
    else 
      render action: 'edit'
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
  end


end