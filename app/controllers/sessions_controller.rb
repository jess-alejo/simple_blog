class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def new
    if user_signed_in?
      flash[:alert] = "You are already logged in"
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.find_or_initialize_by(email: params[:user][:email])

    if @user&.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back, #{@user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid email or password combination"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "You have been logged out"
    redirect_to root_path
  end
end
