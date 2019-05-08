class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @courses = @student.courses
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :major)
  end

end
