class EnrollmentsController < ApplicationController

  def show
    @enrollment = Enrollment.find(params[:id])
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    @enrollment.update(enrollment_params)
    redirect_to @enrollment
  end

  private
  def get_enrollment
    @enrollment = Enrollment.find(params[:id])
  end

  def enrollment_params
    params.require(:enrollment).permit(:course_id, :student_id)
  end
end
