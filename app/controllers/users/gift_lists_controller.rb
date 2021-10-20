module Users
  class GiftListsController < ApplicationController

    def create
      @user = User.find(params[:id])
      if @user.update(gift_list_ids: [*@user.gift_list_ids, user_params["gift_lists"]].compact)
        redirect_to user_path(@user)
      else
      end
    end

    private

    def user_params
      params.require(:user).permit(:gift_lists)
    end
  end
end
