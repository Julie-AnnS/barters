class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_notifications, if: :current_user

  private

  def set_notifications
    notifications = Notification.where(recipient: current_user).newest_first.limit(9).unread
    @unread = notifications.unread
    @read = notifications.read
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :nickname, :phone_number, :location, :language])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :phone_number, :location, :language])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
