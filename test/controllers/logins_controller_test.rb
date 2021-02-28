require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get logins_home_url
    assert_response :success
  end

end
