class RoomsController < ApplicationController
  # load_and_authorize_resource

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find params[:id]
  end

  def edit
    @room = Room.find params[:id]
  end

  def create
    @room = Room.create params[:room]
    redirect_to rooms_path
  end

  def update
    @room = Room.find params[:id]
    @room.update_attributes params[:room]
    redirect_to room_path
  end

  def destroy
    @room = Room.find params[:id]
    @room.destroy
    redirect_to rooms_path
  end


end