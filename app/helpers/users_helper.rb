module UsersHelper
  def display_user_name(user_id)
    if user_id.blank?
      raw("<h5>You are not logged in<h5><br>#{link_to('Sign-In', '/signin', :class => "btn")}")
    else
      user = User.find(user_id)
      raw(user.name)
    end
  end


end
