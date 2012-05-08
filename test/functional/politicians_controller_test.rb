require 'test_helper'

class OfficialsControllerTest < ActionController::TestCase
  setup do
    @official = officials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create official" do
    assert_difference('official.count') do
      post :create, official: @official.attributes
    end

    assert_redirected_to official_path(assigns(:official))
  end

  test "should show official" do
    get :show, id: @official.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @official.to_param
    assert_response :success
  end

  test "should update official" do
    put :update, id: @official.to_param, official: @official.attributes
    assert_redirected_to official_path(assigns(:official))
  end

  test "should destroy official" do
    assert_difference('official.count', -1) do
      delete :destroy, id: @official.to_param
    end

    assert_redirected_to officials_path
  end
end
