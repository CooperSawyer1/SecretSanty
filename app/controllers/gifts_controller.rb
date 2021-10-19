class GiftsController < ApplicationController

  def index
    @gifts = Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      flash[:success] = "Welcome to Secret Santy"
      redirect_to @gift
    else
      render :new
    end
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :price, :website, :user_id, :gift_list_id)
  end
end
