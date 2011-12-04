class ApplicationController < ActionController::Base
  protect_from_forgery


 force_ssl

  private

  def current_politician
    @current_politician ||= Politician.find(session[:politician_id]) if session[:politician_id]
  end

  helper_method :current_politician
end
