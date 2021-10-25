class GiftsController < ApplicationController
  # before_action :set_current_user

  def index
    @gifts = Gift.where(user_id: current_user&.id)
  end

  def show
    @brand = Brand.find(params[:id])
    @gift = Gift.find(params[:id])
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to user_gifts_path(current_user)
    else
      render :new
    end
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :price, :website, :user_id, :giver_id, :brand_id)
  end
end
