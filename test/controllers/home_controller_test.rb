require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get information" do
    get :information
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get item_list" do
    get :item_list
    assert_response :success
  end

end
