class SessionsController < ApplicationController

  def login
  end

  def create
    @user = User.find_by(user_name: params[:session][:user_name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'login'
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

end
