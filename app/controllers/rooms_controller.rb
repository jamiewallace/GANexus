class RoomsController < ApplicationController

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
    redirect_to room_path
  end

  def create
    @room = Room.create params[:room]
    redirect_to room_path
  end

  def update
    @room = Room.find params[:id]
    redirect_to room_path
  end

  def destroy
    @room = Room.find params[:id]
    @room.destroy
  end


end