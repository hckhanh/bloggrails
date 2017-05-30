class SessionsController < ApplicationController
  include UsersHelper
  skip_before_action :authenticate, except: :destroy

  def new
  end

  def create
    login = params[:login]
    password = params[:password]

    user = if is_email login
             User.find_by_email login
           else
             User.find_by_username login
           end

    if user.try :authenticate, password
      session = user.sessions.create session_token: SecureRandom.urlsafe_base64(64)
      cookies.encrypted[:session_token] = session.session_token

      redirect_to params[:return_to] || root_path
    else
      render :new
    end
  end

  def destroy
    @session.destroy
    cookies.delete :session_token
    redirect_to root_path
  end
end
