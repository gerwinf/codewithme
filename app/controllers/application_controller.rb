class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # To redirect the user to activities page after login
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || activities_path
  end
  # To redirect the user to activities page after signup
  def after_sign_up_path_for(resource)
    stored_location_for(resource) || activities_path
  end
end
