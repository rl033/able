class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_account.accountable_type == nil
      new_student_path
    else
      dashboard_path(current_account.id)
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end
end
