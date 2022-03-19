class ApplicationController < ActionController::Base
  DEVISE_EXT_ATTRS = [:name]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: DEVISE_EXT_ATTRS)
    devise_parameter_sanitizer.permit(:account_update, keys: DEVISE_EXT_ATTRS)
  end
end
