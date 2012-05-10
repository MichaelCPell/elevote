require 'test_helper'

class ConstituentsControllerTest < ActionController::TestCase
  setup do
    @constituent = constituents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituent" do
    assert_difference('Constituent.count') do
      post :create, constituent: @constituent.attributes
    end

    assert_redirected_to constituent_path(assigns(:constituent))
  end

  test "should show constituent" do
    get :show, id: @constituent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituent.to_param
    assert_response :success
  end

  test "should update constituent" do
    put :update, id: @constituent.to_param, constituent: @constituent.attributes
    assert_redirected_to constituent_path(assigns(:constituent))
  end

  test "should destroy constituent" do
    assert_difference('Constituent.count', -1) do
      delete :destroy, id: @constituent.to_param
    end

    assert_redirected_to constituents_path
  end
end
