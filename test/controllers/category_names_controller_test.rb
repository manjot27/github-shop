require 'test_helper'

class CategoryNamesControllerTest < ActionController::TestCase
  setup do
    @category_name = category_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_name" do
    assert_difference('CategoryName.count') do
      post :create, category_name: {  }
    end

    assert_redirected_to category_name_path(assigns(:category_name))
  end

  test "should show category_name" do
    get :show, id: @category_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_name
    assert_response :success
  end

  test "should update category_name" do
    patch :update, id: @category_name, category_name: {  }
    assert_redirected_to category_name_path(assigns(:category_name))
  end

  test "should destroy category_name" do
    assert_difference('CategoryName.count', -1) do
      delete :destroy, id: @category_name
    end

    assert_redirected_to category_names_path
  end
end
