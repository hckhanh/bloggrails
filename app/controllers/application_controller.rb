class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  protected

  def authenticate
    @session = Session.find_by_session_token cookies.encrypted[:session_token]
    redirect_to login_path return_to: request.url unless @session
  end
end
