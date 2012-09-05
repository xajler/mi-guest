class SessionsController < ApplicationController

  skip_before_filter :authorize

  def new
    render layout: false
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to accommodations_path
    else
      flash.now.alert = "Email or password is invalid"
      render "new", layout: false
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
