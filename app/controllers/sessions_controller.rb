class SessionsController < ApplicationController

  def new

  end

  def create

    if params[:email]
      official = Official.find_by_email(params[:email])

      if official && official.authenticate(params[:password])
        session[:official] = official
        redirect_to legislations_path, :notice => "Logged in!"

      else

         redirect_to new_session_path, :notice => "Invalid email or password"
      end

    else

    raise request.env["omniauth.auth"].to_yaml



    end
  end

  def destroy
    session[:official] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
