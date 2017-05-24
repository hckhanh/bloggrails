class SessionsController < ApplicationController
  include UsersHelper

  def new

  end

  def create
    login    = session_params[:login]
    password = session_params[:password]

    user = if is_email login
             User.find_by_email login
           else
             User.find_by_username login
           end

    if user.try :authenticate, password
      redirect_to new_user_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def session_params
    params.permit :login, :password
  end

end
