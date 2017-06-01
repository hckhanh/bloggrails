class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate
  helper_method :user_logged_in

  protected

  def authenticate
    @session = Session.find_by_session_token cookies.encrypted[:session_token]
    redirect_to login_path return_to: request.url unless @session
  end

  def verify_recaptcha(recaptcha_response)
    uri = URI('https://www.google.com/recaptcha/api/siteverify')
    res = Net::HTTP.post_form uri,
                              secret: Rails.application.secrets.recaptcha_secret_key,
                              response: recaptcha_response
    ActiveSupport::JSON.decode(res.body)['success']
  end

  def user_logged_in
    !cookies.encrypted[:session_token].nil?
  end
end
