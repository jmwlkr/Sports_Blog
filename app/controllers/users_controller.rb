class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = User.find(session[:user_id])
  end

  def create
    @user = User.new(email: params[:email],
                     password: params[:password],
                     name: params[:name])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = "Unsuccessfull Signup"
    end

    redirect_to "/users"
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
