require 'test_helper'

class BananasControllerTest < ActionDispatch::IntegrationTest
  test "should get photos" do
    get bananas_photos_url
    assert_response :success
  end

  test "should get photos_user" do
    get bananas_photos_user_url
    assert_response :success
  end

  test "should get data" do
    get bananas_data_url
    assert_response :success
  end

  test "should get points" do
    get bananas_points_url
    assert_response :success
  end

end
