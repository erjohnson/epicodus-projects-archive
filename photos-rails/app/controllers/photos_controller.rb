class PhotosController < ApplicationController

  before_filter :authorize, only: [:create, :destroy]

  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to photos_path, notice: "Selfie Added!"
    else
      render "new"
    end
  end

  def new
    @photo = Photo.new
  end

  def show
    @photo = Photo.find(params[:id])
    @tag = Tag.new
    @fav = Favorite.new
  end




  private

  def photo_params
    params.require(:photo).permit(:picture, :uploaded_by)
  end
end
