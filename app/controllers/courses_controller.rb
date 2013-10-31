class CoursesController < ApplicationController
  # load_and_authorize_resource
  # load_and_authorize_resource :user, :current_user

  def index
    @courses = Course.all

  end

  def new
    @course = Course.new
    @rooms = Room.all
  end

  def show
    @course = Course.find params[:id]
  end

  def edit
    @course = Course.find params[:id]
  end

  def create
    @course = Course.create params[:course]
    redirect_to courses_path
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes params[:course]
    redirect_to course_path
  end

  def destroy
    @course = Course.find params[:id]
    @course.destroy
    redirect_to courses_path
  end

  def apply
    course = Course.find params[:id]
    if course.user_can_apply?(current_user)
      course.users << current_user
      notice = 'Successfully applied'
    else
      notice = "You are already signed up!"
      
    end
    redirect_to course, notice: notice
  end
end


