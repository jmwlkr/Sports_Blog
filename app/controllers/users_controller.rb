class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = User.find(session[:user_id])
  end

  def create
    @user = User.new(email: params[:user][:email],
                     password: params[:user][:password],
                     name: params[:user][:name])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = "Unsuccessfull Signup"
    end

    redirect_to "/users"
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])

    redirect_to "/users"
  end

  def destroy
  end
end
