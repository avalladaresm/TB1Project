class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    helper_method :current_user
    before_action :authenticate

    def current_user
        if session[:user_id].present?
            @current_user = User.find(session[:user_id])
        end
    end

    def login(user)
        session[:user_id] = user.id
        redirect_to clients_path
    end

    def authenticate
        unless current_user.present?
            redirect_to login_path
        end
    end
end
