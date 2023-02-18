class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to "/admin/index"
  end
  private
  def category_params
    params.require(:category).permit(:title_ru, :title_en)
  end
end
