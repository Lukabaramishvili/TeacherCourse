class SessionsController < ApplicationController
  def new
  end

  def create
     @teacher = Teacher.find_by_name(params[:name])
     if @teacher && @teacher.authenticate(params[:password])
       session[:teacher_id] = @teacher.id
       redirect_to teacher_path(@teacher), notice: "Logged in!"
     else
       flash.now.alert = "Username or Password is invalid"
       render :new
     end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to login_path, notice: "Logged Out"
  end
end
