class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:new) { |u| u.permit(:first_name, :last_name, :email, :password, :phone_number, :address, :city, :state, :zip, :type, :mobile_number, :work_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :birthdate, :license, :language)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :phone_number, :address, :city, :state, :zip, :type, :mobile_number, :work_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :birthdate, :license, :language)}
  end

  def after_sign_in_path_for(resource)
    redirect_back(fallback_location: root_path)
  end
end
