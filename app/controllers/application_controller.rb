class ApplicationController < ActionController::Base
  protect_from_forgery
  #http_basic_authenticate_with :name => "roll", :password => "tide"

  helper_method :current_candidate, :current_url, :current_user, :omnihash


  def current_url
    @current_url = request.url
  end


  def omnihash

    request.env['omniauth.auth'].to_s
  end

  private

  def current_candidate
  @current_candidate ||= Candidate.find_by_id(session[:candidate])
  end


  def current_user

    if session[:user]
      @current_user ||= User.find_by_id(session[:user])
    else
      @current_user = User.new(name: "Not Logged In")
    end

  end

  def name_from_id(id)
    self.find(id).name

  end









end
