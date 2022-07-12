require 'swagger_helper'

RSpec.describe 'api/v1/geojson_info', type: :request do

  path '/api/v1/geojson_info' do

    get('list cars') do
      tags 'GeojsonInfo'
      produces 'application/json', 'application/xml'
      response(200, 'successful') do
        schema type: :object,
        properties: {
            data_type: {type: :string},
            country_name: {type: :string},
            properties: {type: :json},
            geometry: {type: :json}
          }
        run_test!
      end
    end
  end

  path '/api/v1/geojson_info/{country_name}' do
    
    get('show geojson_info') do
      tags 'GeojsonInfo'
      produces 'application/json', 'application/xml'
      parameter name: 'country_name', in: :path, type: :string, description: 'country_name'

      response(200, 'successful') do
        schema type: :object,
        properties: {
          data_type: {type: :string},
          country_name: {type: :string},
          properties: {type: :json},
          geometry: {type: :json}
        },
        required: [ 'country_name' ]
        run_test!
      end
    end
  end

end
