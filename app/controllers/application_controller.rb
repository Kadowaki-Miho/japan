class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nickname
  end

  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource)
    user_session_path
  end
end
