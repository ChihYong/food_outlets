require 'test_helper'

class StallsControllerTest < ActionController::TestCase
  setup do
    @stall = stalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stall" do
    assert_difference('Stall.count') do
      post :create, :stall => @stall.attributes
    end

    assert_redirected_to stall_path(assigns(:stall))
  end

  test "should show stall" do
    get :show, :id => @stall.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stall.to_param
    assert_response :success
  end

  test "should update stall" do
    put :update, :id => @stall.to_param, :stall => @stall.attributes
    assert_redirected_to stall_path(assigns(:stall))
  end

  test "should destroy stall" do
    assert_difference('Stall.count', -1) do
      delete :destroy, :id => @stall.to_param
    end

    assert_redirected_to stalls_path
  end
end
