class PasswordResetController < ApplicationController
  def new
  end

  def create
    data = params.permit :email1

    if params.key?(:email) && User.find_by_email(data[:email])
      redirect_to new_user_path
    else
      flash[:error] = 'We cannot find this email.'
      render :new
    end
  end

  def reset_edit
  end

  def reset_update
  end
end
