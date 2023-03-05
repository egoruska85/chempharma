class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id]) 
  end
  def create
    @product = Product.new(product_params)
    @product.save
  end

  private
  def product_params
    params.require(:product).permit(:title_ru, :title_en, :desc_ru, :desc_en, :text, :country_id, :category_id, :manufacturer_id, :price, :image, :images => [])
  end
end
