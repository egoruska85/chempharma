require "test_helper"

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get manufacturers_create_url
    assert_response :success
  end
end
