class UsersController < ApplicationController

  def new

  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      user = User.new(email: params[:user][:email], username: params[:user][:username])
      user.password = params[:user][:password]
      if user.save
        redirect_to root_path
      else
        flash.alert = "Problem with saving record!"
        render 'new'
      end
    else
      flash.alert = "Passwords must match!"
      render 'new'
    end
  end

end