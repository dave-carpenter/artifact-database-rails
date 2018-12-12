class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def login_required
    if current_user.blank?
      flash[:danger] = "Log in to access this page"
      redirect_to('/')
    end
  end
end
