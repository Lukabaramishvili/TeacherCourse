class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @teacher = @course.teacher
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to @course
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to @course
  end

  private
  def get_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :teacher_id)
  end
end
