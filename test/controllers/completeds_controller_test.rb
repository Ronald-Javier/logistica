require 'test_helper'

class CompletedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get completeds_index_url
    assert_response :success
  end

end
