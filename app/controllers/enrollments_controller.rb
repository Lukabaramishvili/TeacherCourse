class EnrollmentsController < ApplicationController

  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find(params[:id])
    @students = @enrollment.students
  end

  def new
    @enrollment = Enrollment.new
    @student = Student.find(params[:id])
  end

  def create
    # byebug
    @enrollment = Enrollment.create(enrollment_params)
    redirect_to student_path(@enrollment.student.id)
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    @enrollment.update(enrollment_params)
    @course = @enrollment.course
    redirect_to @enrollment
  end

  def destroy
    # byebug
    @enrollment = Enrollment.find(params[:id])
    @student = @enrollment.student
    @enrollment.destroy
    redirect_to student_path(@student)
  end

  private
  def get_enrollment
    @enrollment = Enrollment.find(params[:id])
  end

  def enrollment_params
    params.require(:enrollment).permit(:course_id, :student_id)
  end
end
