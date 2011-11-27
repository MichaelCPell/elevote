require 'test_helper'

class PrecinctsControllerTest < ActionController::TestCase
  setup do
    @precinct = precincts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precincts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precinct" do
    assert_difference('Precinct.count') do
      post :create, precinct: @precinct.attributes
    end

    assert_redirected_to precinct_path(assigns(:precinct))
  end

  test "should show precinct" do
    get :show, id: @precinct.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precinct.to_param
    assert_response :success
  end

  test "should update precinct" do
    put :update, id: @precinct.to_param, precinct: @precinct.attributes
    assert_redirected_to precinct_path(assigns(:precinct))
  end

  test "should destroy precinct" do
    assert_difference('Precinct.count', -1) do
      delete :destroy, id: @precinct.to_param
    end

    assert_redirected_to precincts_path
  end
end
