class SessionsController < ApplicationController

  layout "external"
  skip_before_action :authenticate

  def new
    if current_user.present?
      redirect_to clients_path
    else
      @user = User.new
    end
  end

  def create
    email = params[:session][:email]
    password = params[:session][:password]

    @user = User.find_by_email(email)

    if @user.present? && @user.authenticate(password)
      login(@user)
    else
      redirect_to login_path, flash: {notice: "Email o password incorrect"}
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
