class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
    def current_user
        if session[:login_id]
            @current_user ||= Login.find(session[:login_id])
        else
            @current_user = nil
        end
    end
end
