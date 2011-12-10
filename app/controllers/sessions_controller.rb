class SessionsController < ApplicationController

  def new

  end

  def create
    politician = Politician.find_by_email(params[:email])

    if politician && politician.authenticate(params[:password])
      session[:politician_id] = politician.id
      redirect_to politician, :notice => "Logged in!"

    else

       redirect_to new_session_path, :notice => "Invalid email or password"
    end
  end

  def destroy
    session[:politician_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
