class ApplicationController < ActionController::Base
    # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end

    def only_admin
      unless user_signed_in? && current_user.isadmin
        redirect_to root_path, notice: 'No tienes permisos para crear usuarios'
      end
    end
end
