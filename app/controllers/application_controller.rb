class ApplicationController < ActionController::Base
    before_action :set_user
  
    private
  
    def set_user
      @user = User.find(session[:user_id]) if session[:user_id] # Adjust based on your user session management
    end
  end
  