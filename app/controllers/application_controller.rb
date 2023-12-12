class ApplicationController < ActionController::Base
  helper_method :current_user, :current_admin?

  def current_user
    @_current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    if current_user.admin?
      true
    else
      false
    end
  end
end
