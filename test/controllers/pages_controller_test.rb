require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get location" do
    get :location
    assert_response :success
  end

  test "should get stockists" do
    get :stockists
    assert_response :success
  end

end
