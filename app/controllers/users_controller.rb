class UsersController < ApplicationController
  
  layout "external", only: [:new, :create]
  skip_before_action :authenticate, only: [:new, :create]

  def new
    if current_user.present?
      redirect_to clients_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
    else
      render :new
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
