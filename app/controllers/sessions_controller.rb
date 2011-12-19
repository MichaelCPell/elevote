class SessionsController < ApplicationController

  def new

  end

  def create
    official = Official.find_by_email(params[:email])

    if official && official.authenticate(params[:password])
      session[:official_id] = official.id
      redirect_to official, :notice => "Logged in!"

    else

       redirect_to new_session_path, :notice => "Invalid email or password"
    end
  end

  def destroy
    session[:official_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
