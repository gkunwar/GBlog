class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :redirect_to_login

  private
  def redirect_to_login
    if params[:controller] == "devise/registrations" && params[:action] == 'new'
      redirect_to new_user_session_path
    end
  end
end
