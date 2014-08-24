class SessionsController < ApplicationController
  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if request.xhr?
        render json: { success: true, next_page: 'user_index', user_name: user.name } and return
      else
        redirect_to root_url
      end
    elsif
      if request.xhr?
        render json: { success: false, message: 'User with email/password not found. Please register first.', redirect_to: root_url } and return
      else
        redirect_to root_url
      end
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    render json: { success: true, redirect_to: root_url } and return
  end
end
