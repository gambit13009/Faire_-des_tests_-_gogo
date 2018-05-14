class ApplicationController < ActionController::Base
protect_from_forgery with: :exception


protected

def configure_permitted_parameters
	added_attrs = [:firstname, :lastname, :email, :password, :password_confirmation, :remember_me]
	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:firstname, :lastname)}


end 

private

def after_sign_out_path_for(resource_or_scope)
	root_path 
end

end
