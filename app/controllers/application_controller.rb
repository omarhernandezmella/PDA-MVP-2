class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :role])
  end

  def set_current_user
    @user = current_user
  end

end
