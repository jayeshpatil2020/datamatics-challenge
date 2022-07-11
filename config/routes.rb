Rails.application.routes.draw do
  
  get 'load_map', to: 'staticpages#index'
  
  get 'load_geo_json_data', to: 'staticpages#load_geo_json_data'

end
