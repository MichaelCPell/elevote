class ApplicationController < ActionController::Base
  protect_from_forgery
  #http_basic_authenticate_with :name => "roll", :password => "tide"

  helper_method :current_official, :current_url, :current_constituent, :omnihash



  def current_url
    @current_url = request.url
  end


  def omnihash

    request.env['omniauth.auth'].to_s
  end

 #force_ssl

  private



  def current_official
  @current_official ||= Official.find_by_id(session[:official])
  end


  def current_constituent
    @current_constituent ||= Constituent.find_by_id(session[:constituent])
  end








end
