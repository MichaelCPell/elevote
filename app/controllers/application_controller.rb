class ApplicationController < ActionController::Base
  protect_from_forgery
  #http_basic_authenticate_with :name => "roll", :password => "tide"

  helper_method :current_candidate, :current_url, :current_constituent, :omnihash


  def current_url
    @current_url = request.url
  end


  def omnihash

    request.env['omniauth.auth'].to_s
  end




  private



  def current_candidate
  @current_candidate ||= candidate.find_by_id(session[:candidate])
  end


  def current_constituent

    @current_constituent ||= Constituent.find_by_id(session[:constituent])
    if @current_constituent.blank?
      Constituent.new(name: "Not Logged In")
    end

  end

  def name_from_id(id)
    self.find(id).name

  end









end
