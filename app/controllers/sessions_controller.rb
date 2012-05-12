class SessionsController < ApplicationController

  def new


  end


  def create

    auth = request.env["omniauth.auth"]
    if params[:facebook]
       user = User.find_or_create_by_email(auth["info"]["email"])

       user.name = auth["info"]["name"]
       user.image_url = auth["info"]["image"]
       user.save

       session[:user] = user
    end


    if params[:commit]
      user = User.find_or_create_by_email(params[:email])
        user.name = params[:email]

        user.save

      session[:user] = user
    end

    redirect_to "/users/show"
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end

  def candidate_login
    candidate = Candidate.find_by_email(params[:email])

      if candidate && candidate.authenticate(params[:password])
        session[:user] = ""
        session[:candidate] = candidate
        redirect_to candidate

      else

         redirect_to :back, :notice => "Invalid email or password"
      end

  end




end
