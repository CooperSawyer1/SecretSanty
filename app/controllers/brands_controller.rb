class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def show
    @gifts = Gift.where(user_id: current_user&.id)
    @brand = Brand.find(params[:id])
  end

end
