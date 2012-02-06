class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_official

 #force_ssl

  private

  def current_official



  @current_official ||= Official.find_by_id(session[:official])

  end




end
