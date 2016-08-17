require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get users_signup_url
    assert_response :success
  end

  test "should get signup_complete" do
    get users_signup_complete_url
    assert_response :success
  end

  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get login_complete" do
    get users_login_complete_url
    assert_response :success
  end

  test "should get logout_complete" do
    get users_logout_complete_url
    assert_response :success
  end

end
