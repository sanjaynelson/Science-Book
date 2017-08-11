class SessionsController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      @errors = ["Incorrect Username or Password"]
      render 'new'
    end
  end

  def destroy
    if logged_in?
      session.delete(:user_id)
      redirect_to new_session_path
    else
      redirect_to '/'
    end
  end

end