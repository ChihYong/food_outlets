require 'test_helper'

class CanteensControllerTest < ActionController::TestCase
  setup do
    @canteen = canteens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canteens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canteen" do
    assert_difference('Canteen.count') do
      post :create, :canteen => @canteen.attributes
    end

    assert_redirected_to canteen_path(assigns(:canteen))
  end

  test "should show canteen" do
    get :show, :id => @canteen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @canteen.to_param
    assert_response :success
  end

  test "should update canteen" do
    put :update, :id => @canteen.to_param, :canteen => @canteen.attributes
    assert_redirected_to canteen_path(assigns(:canteen))
  end

  test "should destroy canteen" do
    assert_difference('Canteen.count', -1) do
      delete :destroy, :id => @canteen.to_param
    end

    assert_redirected_to canteens_path
  end
end
