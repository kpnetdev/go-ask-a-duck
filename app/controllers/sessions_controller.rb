class SessionsController < ApplicationController

  def new
    @message = ""
  end

  def create
    user = User.find_by_email(params[:sessions][:email])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Welcome back, #{user.email}"
    else
      @message = params
      flash.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end