Rails.application.routes.draw do
  
  root to: 'staticpages#index'
  
  get 'load_geo_json_data', to: 'staticpages#load_geo_json_data'

end
