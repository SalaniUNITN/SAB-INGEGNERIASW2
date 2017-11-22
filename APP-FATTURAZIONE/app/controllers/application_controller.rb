class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to users_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
       render 'new'
    end
  end

  def destroy
  end

  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end

end
