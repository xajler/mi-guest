class UsersController < ApplicationController

  skip_before_filter :authorize

  def new
    @user = User.new
  end

  def create
    render "new"
    # @user = User.new(params[:user])
    # @user = nil
    # if @user.save
    #   session[:user_id] = @user.id
    #   redirect_to root_url, notice: "Thank you for signing up!"
    # else
    #   render "new"
    # end
  end
end
