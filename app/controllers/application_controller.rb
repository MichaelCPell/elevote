class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_official, :current_facebooker, :current_facebooker_email, :current_url


  def current_url
    @current_url = request.url
  end

 #force_ssl

  private



  def current_official
  @current_official ||= Official.find_by_id(session[:official])
  end


  def current_facebooker
     @auth_hash = request.env['omniauth.auth']
  end

  def current_facebooker_email
    auth = request.env['omniauth.auth']
    @current_facebooker_email = auth["info"]["name"]

  end


  def facebook_logout_url

  end




end
