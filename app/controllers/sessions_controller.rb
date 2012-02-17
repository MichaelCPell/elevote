class SessionsController < ApplicationController

  def new


  end


  def create



    auth = request.env["omniauth.auth"]
    @auth = auth
    if auth
     constituent = Constituent.find_or_create_by_email_and_name_and_image_url(auth["info"]["email"],auth["info"]["name"],
                                                                              auth["info"]["image"] )

     session[:constituent] = constituent


    end




    if params[:email]
      official = Official.find_by_email(params[:email])

      if official && official.authenticate(params[:password])
        session[:official] = official
        redirect_to legislations_path, :notice => "Logged in!"

      else

         redirect_to new_session_path, :notice => "Invalid email or password"
      end







    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end

end
