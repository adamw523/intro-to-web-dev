class OrganizationsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @orgs = Organization.find :all
  end

  def create
    if session[:user_id] && @user = User.find(session[:user_id])
      @org = Organization.new

      if request.post?
        @org = Organization.create(:address => params[:address], :city => params[:city],
          :prov_st => params[:prov_st], :country => params[:country], :email => params[:email],
          :user => User.find(session[:user_id]))

        redirect_to '/organizations/'
      end
    else
      
    end
  end

  def edit

  end
end
