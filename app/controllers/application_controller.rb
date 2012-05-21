class ApplicationController < ActionController::Base
  protect_from_forgery
  #http_basic_authenticate_with :name => "roll", :password => "tide"

  helper_method :current_candidate, :current_url, :current_user, :omnihash, :current_site


  def current_url
    @current_url = request.url
  end


  def omnihash

    request.env['omniauth.auth'].to_s
  end

  private

  def current_candidate
    @current_candidate ||= Candidate.find_by_id(session[:candidate_id])
  end


  def current_user

    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    else
      @current_user = nil
    end

  end


  def current_site

    if session[:site_id]
      @current_site ||= Site.find_by_id(session[:site_id])
    else
      @current_user = nil
    end

  end

  def name_from_id(id)
    self.find(id).name
  end

  def nav_content_show_elections
    @nav_content = "Click to See Elections Again"
  end









end
