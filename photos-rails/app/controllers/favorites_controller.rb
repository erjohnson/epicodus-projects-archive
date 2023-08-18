class FavoritesController < ApplicationController

  before_filter :authorize, only: [:create, :destroy]

  def create
    @fav = Favorite.create(fav_params)
    if @fav.save
      redirect_to photos_path, notice: "Favorite Added!"
    else
      render "show_photo_path"
    end
  end

  def destroy

  end

  private

  def fav_params
    params.require(:favorite).permit(:photo_id, :user_id)
  end
end
