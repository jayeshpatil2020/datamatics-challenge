Rails.application.routes.draw do
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root to: 'staticpages#index'
  
  namespace :api do
    namespace :v1 do
      resources :geojson_info, only: [:index, :show], param: :country_name
    end
  end

end
