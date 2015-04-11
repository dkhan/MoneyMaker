class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def new
  end

  def create
    @partner = Partner.new(partner_params)

    @partner.save
    redirect_to @partner
  end

private
  
  def partner_params
    params.require(:partner).permit(:nickname, :email)
  end
end
