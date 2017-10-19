class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  before_action :set_source

  def set_source
  	session[:source] = params[:q] if params[:q]
  end
  
  #its just a reminder that i can do this instead of create a concern
  #before_action :configure_permitted_parameters, if: :devise_controller?


=begin
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
=end
end
