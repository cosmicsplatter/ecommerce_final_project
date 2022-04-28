class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :dibby_pages

  def dibby_pages
    Page.all
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[name email password address city province_id])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name email password current_password address city
                                               province_id])
  end
end
