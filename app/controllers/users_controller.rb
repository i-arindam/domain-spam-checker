class UsersController < ApplicationController

  def create
    email = params[:user][:email].strip
    user = User.where(email: email).first
    render_404 and return if user

    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to root_url and return
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
