class SessionsController < ApplicationController
  def new
  end

  def create
     @teacher = Teacher.find_by_username(params[:name])
     if @teacher && teacher.authenticate(params[:password])
       session[:teacher_id] = teacher.id
       redirect_to root_url, notice: "Logged in!"
     else
       flash.now.alert = "Username or Password is invalid"
       render :new
     end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to root_url, notice: "Logged Out"
  end
end
