class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(email: params[:email]).first

    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] =  "Successfully Logged IN"
    else
      flash[:alert] = "Your credentials do not match"
    end

    redirect_to "/users/#{ @user.id }"
  end

  def destroy
    session[:user_id] =  nil
    redirect_to "/users"
  end
end
