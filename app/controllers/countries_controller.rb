class CountriesController < ApplicationController
  def create
    @country = Country.new(country_params)
    @country.save
    redirect_to "/admin/index"
  end
  private
  def country_params
    params.require(:country).permit(:name_ru, :name_en)
  end
end
