class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) do |u|
        u.permit(:email, :username)
      end
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:email, :username, :password, :password_confirmation)
      end
      # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
    end
end
