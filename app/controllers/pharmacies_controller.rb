class PharmaciesController < ApplicationController
  def index
    city = params[:city]
    pharmacies = WalgreensService.new.get_pharmacies(city)

    render json: pharmacies
  end
end