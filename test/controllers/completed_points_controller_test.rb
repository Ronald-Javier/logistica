require 'test_helper'

class CompletedPointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get completed_points_index_url
    assert_response :success
  end

end
