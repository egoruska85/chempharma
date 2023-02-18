class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect

  def index
    @countries = Country.all
    @manufacturies = Manufacturer.all
    @categories = Category.all
  end

  protected
  def redirect
    if current_user.admin != true
      redirect_to root_path
    end
  end
end
