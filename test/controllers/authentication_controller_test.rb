require 'test_helper'

class AuthenticationControllerTest < ActionController::TestCase
  test "should get consumersignin_get" do
    get :consumersignin_get
    assert_response :success
  end

end
