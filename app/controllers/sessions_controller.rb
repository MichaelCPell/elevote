class SessionsController < ApplicationController

  def new


  end


  def create
    user ||= nil
    auth = request.env["omniauth.auth"]

    if params[:facebook]
       user = User.find_or_create_by_email(auth["info"]["email"])
       user.name = auth["info"]["name"]
       user.image_url = auth["info"]["image"]
       user.save

       session[:user_id] = user.id
    end

    if params[:commit]
      user = User.find_or_create_by_email(params[:email])
      user.name = params[:email]
      user.save

      session[:user_id] = user.id
    end

    user.endorsements.each{|x| session[:candidate_ids] << x.endorsementable_id.to_s }

    redirect_to "/users/show"
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end

  def candidate_login
    candidate = Candidate.find_by_email(params[:email])

      if candidate && candidate.authenticate(params[:password])
        session[:user_id] = ""
        session[:candidate_id] = candidate.id
        redirect_to candidate

      else

         redirect_to :back, :notice => "Invalid email or password"
      end

  end




end
