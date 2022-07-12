require "test_helper"

class GeojsonInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get geojson_info_index_url
    assert_response :success
  end

  test "should get show" do
    get geojson_info_show_url
    assert_response :success
  end
end
