class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      respond_to do |format|
        format.html { redirect_to locations_path }
        format.js
      end
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(params[:location])
    respond_to do |format|
      format.html { redirect_to locations_url }
      format.js
    end
  end

private

  def location_params
    params.require(:location).permit(:name)
  end

end
