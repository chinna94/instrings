class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end


  private

  def current_user_prov
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_user_signed_in?
    if current_user_prov
      return true
    else
      return false
    end
  end

  helper_method :current_user_prov
  helper_method :current_user_signed_in?
end
