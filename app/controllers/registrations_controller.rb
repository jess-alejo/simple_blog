class RegistrationsController < ApplicationController
  skip_before_action :authenticate_user

  def new
    if user_signed_in?
      flas[:notice] = "You are already logged in."
      redirect_back(fallback_url: root_path)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Registration successful"
    else
      flash.now[:alert] = "Cannot register user"
      render :new, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
