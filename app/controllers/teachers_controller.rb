class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    @courses = @teacher.courses
    @course = Course.new
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.valid?
    session[:teacher_id] = @teacher.id
    redirect_to root_url, notice: "Thank you for signing up"
    else
      render :new
    end
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to @teacher
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
  end

  private
  def get_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :bio, :password, :password_confirmation)
  end

end
