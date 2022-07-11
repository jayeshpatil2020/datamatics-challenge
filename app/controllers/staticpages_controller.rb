class StaticpagesController < ApplicationController
  def index
  end

  def load_geo_json_data
    file = open("#{Rails.root}/europe.geojson")
    render json: file.read, status: :ok
  end
end