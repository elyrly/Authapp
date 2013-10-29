class SessionsController < ApplicationController
  include SessionsHelper
  skip_before_filter :authorize, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        sign_in(user)
        redirect_to user_path(user.id)
    else
      flash[:errors] = "Errors"
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_path
  end

  def current_user
    User.find_by_remember_token(cookies[:remember_token])
  end
end
