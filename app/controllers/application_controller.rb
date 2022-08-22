class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(resource)
        about_path
    end
    
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
    
    add_flash_types :success, :info, :warning, :danger
    # if article.save
        # redirect_to root_path, notice: "Signed in successfully."
    # else
        # render :
    # end
end
