class ApplicationController < ActionController::Base
  helper_method :user_signed_in?, :current_user
  before_action :authenticate_user

  protected

  def authenticate_user
    return if current_user.present?

    flash[:alert] = "You need to login or register to continue."
    redirect_to root_path
  end

  def user_signed_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
