class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :dibby_pages

  def dibby_pages
    Page.all
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :address, :city, :province])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password, :address, :city, :province])

  end
end
