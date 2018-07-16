require 'test_helper'

class NewFeaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_features_new_url
    assert_response :success
  end

  test "should get create" do
    get new_features_create_url
    assert_response :success
  end

  test "should get show" do
    get new_features_show_url
    assert_response :success
  end

end
