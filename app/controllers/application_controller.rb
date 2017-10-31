# :nodoc:
class ApplicationController < ActionController::Base
  before_action :set_gettext_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute, :first_name, :attribute, :last_name, :attribute, :username])
  end
end
