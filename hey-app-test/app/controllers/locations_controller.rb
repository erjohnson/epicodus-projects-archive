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
      session[:location_id] = @location.id
      redirect_to locations_path, notice: "Thank you for signing in."
    else
      render "new"
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  private
    def location_params
      params.require(:location).permit(:name, :city)
    end
end
