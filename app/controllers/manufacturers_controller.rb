class ManufacturersController < ApplicationController
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    @manufacturer.save
    redirect_to "/admin/index"
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name)
  end
end
