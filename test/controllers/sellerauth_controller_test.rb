require 'test_helper'

class SellerauthControllerTest < ActionController::TestCase
  test "should get sellersignin_get" do
    get :sellersignin_get
    assert_response :success
  end

  test "should get sellersignin" do
    get :sellersignin
    assert_response :success
  end

  test "should get sellersignup_get" do
    get :sellersignup_get
    assert_response :success
  end

  test "should get sellersignup" do
    get :sellersignup
    assert_response :success
  end

end
