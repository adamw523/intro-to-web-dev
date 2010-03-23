# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end
