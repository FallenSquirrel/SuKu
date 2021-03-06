class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  protected
  def login_required
    if !session[:user_id]
      redirect_to "/404.html"
    end
  end
  
  helper_method :current_user
end
