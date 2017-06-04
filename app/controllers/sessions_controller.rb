class SessionsController < ApplicationController
  include UsersHelper
  skip_before_action :authenticate, except: :destroy

  def new
    @session = Session.find_by_session_token cookies.encrypted[:session_token]
    redirect_to redirect_path if @session
  end

  def create
    return render :new unless verify_recaptcha(params['g-recaptcha-response'])

    user = user_from_email_or_username params[:login]
    password = params[:password]

    if user.try :authenticate, password
      session = user.sessions.create session_token: SecureRandom.urlsafe_base64(64)
      cookies.encrypted[:session_token] = {
        value: session.session_token,
        expires: Rails.configuration.expired_time.from_now,
        httponly: true
      }

      redirect_to redirect_path
    else
      flash.now[:error] = 'Invalid account credentials!'
      render :new
    end
  end

  def destroy
    @session.destroy
    cookies.delete :session_token
    redirect_to root_path
  end

  private

  def user_from_email_or_username(login)
    is_email(login) ? User.find_by_email(login) : User.find_by_username(login)
  end

  def redirect_path
    params[:return_to] || root_path
  end
end
