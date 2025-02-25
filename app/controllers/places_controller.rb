class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
    render :template => "places/new"
  end

  def create
    @place = Place.new

    @place["name"] = params["name"]
    @place.save

    redirect_to "/places"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    redirect_to "/places/#{@place["id"]}/entries"
  end
end
