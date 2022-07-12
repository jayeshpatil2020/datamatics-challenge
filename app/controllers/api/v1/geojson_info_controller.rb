class Api::V1::GeojsonInfoController < ApplicationController

  def index
    geojson = GeojsonInfo.all
    render json: geojson, status: :ok
  end

  def show
    geojson = GeojsonInfo.find_by(country_name: params[:country_name].capitalize)
    render json: geojson, status: :ok
  end

end
