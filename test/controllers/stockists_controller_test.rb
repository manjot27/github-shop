require 'test_helper'

class StockistsControllerTest < ActionController::TestCase
  setup do
    @stockist = stockists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stockists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stockist" do
    assert_difference('Stockist.count') do
      post :create, stockist: { address: @stockist.address, name: @stockist.name, string: @stockist.string, string: @stockist.string, website: @stockist.website }
    end

    assert_redirected_to stockist_path(assigns(:stockist))
  end

  test "should show stockist" do
    get :show, id: @stockist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stockist
    assert_response :success
  end

  test "should update stockist" do
    patch :update, id: @stockist, stockist: { address: @stockist.address, name: @stockist.name, string: @stockist.string, string: @stockist.string, website: @stockist.website }
    assert_redirected_to stockist_path(assigns(:stockist))
  end

  test "should destroy stockist" do
    assert_difference('Stockist.count', -1) do
      delete :destroy, id: @stockist
    end

    assert_redirected_to stockists_path
  end
end
