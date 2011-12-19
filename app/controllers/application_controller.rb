class ApplicationController < ActionController::Base
  protect_from_forgery


 #force_ssl

  private

  def current_official
    @current_official ||= Official.find(session[:official_id]) if session[:official_id]
  end

  helper_method :current_official
end
