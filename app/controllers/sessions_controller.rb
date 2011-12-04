class SessionsController < ApplicationController

  def new

  end

  def create
    politician = Politician.find_by_email(params[:email])

    if politician && politician.authenticate(params[:password])
      session[:politician_id] = politician.id
      redirect_to root_url, :notice => "Logged in!"

    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:politician_id] = nil
    redirect_to :root_url, :notice => "Logged out!"
  end

end
