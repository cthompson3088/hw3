class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
end


def show
  @places = Place.find_by({"id" => params["id"]})
  @entries = Entry.where({"place_id" => params["id"]})
end
