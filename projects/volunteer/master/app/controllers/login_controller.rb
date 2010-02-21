class LoginController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end

    if request.post?
      @user = User.find_by_email(params[:email])
      if(@user && @user.password == params[:password])
        session[:user_id] = @user.id
        redirect_to '/login'
      else
        redirect_to '/login'
      end
    end

  end

  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end

  def secret
    if session[:user_id] && @user = User.find(session[:user_id])
      render :text => "welcome to the secret area"
    else
      render :text => "GET OUT! MEMBERS ONLY!"
    end

  end
end
