class UsersController < ApplicationController
  # before_filter :configure_devise_params

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = find_user
  end


  # protected
  #
  # def configure_devise_params
  #   devise_parameter_sanitizer.for(:sign_up) do |u|
  #     u.permit(:first_name, :last_name, :twitter, :bio, :facebook, :website, :position, :linkedin, :avatar, :email, :password, :password_confirmation)
  #   end
  # end


  private

  def user_params
    params.require(:user).permit(:email, :password, :current_password, :password_confirmation, :first_name, :last_name, :twitter, :bio, :facebook, :website, :position, :linkedin, :avatar,)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
