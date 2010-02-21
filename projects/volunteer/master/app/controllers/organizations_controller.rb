class OrganizationsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @orgs = Organization.find :all
  end

  def create
    @org = Organization.new

    if request.post?
      @org = Organization.create(:address => params[:address], :city => params[:city],
        :prov_st => params[:prov_st], :country => params[:country], :email => params[:email])

      redirect_to '/organizations/'
      
    end
  end

  def edit

  end
end
