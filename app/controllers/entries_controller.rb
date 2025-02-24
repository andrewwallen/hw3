class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
    # render contacts/show view with details about Contact
  end

  def index
    @place = Place.find_by({"id" => params["place_id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
  end
  
  def new
    @place = Place.find_by({"id" => params["place_id"]})
    @entry = Entry.new
  end

  def create
    @entry = Entry.new

  
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]

   
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}/entries"
  end

end

