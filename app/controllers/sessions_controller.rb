class SessionsController < ApplicationController

  def new


  end


  def create

    auth = request.env["omniauth.auth"]

    if auth
       user = User.find_or_create_by_email(auth["info"]["email"])

       user.name = auth["info"]["name"]
       user.image_url = auth["info"]["image"]
       user.save

       session[:user] = user
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end

  def candidate_login
    official = Official.find_by_email(params[:email])

      if official && official.authenticate(params[:password])
        session[:official] = official
        redirect_to edit_official_path(official.id)

      else

         redirect_to :back, :notice => "Invalid email or password"
      end

  end

end
