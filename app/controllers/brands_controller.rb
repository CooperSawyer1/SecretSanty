class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def show
    @gifts = Gift.all
    @brand = Brand.find(params[:id])
  end

end
