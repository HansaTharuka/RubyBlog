require 'test_helper'

class AdvertistmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advertistments_index_url
    assert_response :success
  end

end
