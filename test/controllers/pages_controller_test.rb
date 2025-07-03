require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get test_bootstrap" do
    get pages_test_bootstrap_url
    assert_response :success
  end
end
