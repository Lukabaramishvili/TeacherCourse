class ApplicationController < ActionController::Base

   private
   def current_teacher
    @current_teacher ||=  Teacher.find(session[:teacher_id]) if session[:teacher_id]
   end
   helper_method :current_teacher

   def authorize
     redirect_to login_url, alert: "Not authorized" if current_teacher.nil?
   end
end
