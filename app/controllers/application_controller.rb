class ApplicationController < ActionController::Base
  before_action :configure_sign_up_parameters, if: :devise_controller?

  protected
    def configure_sign_up_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    end
end
