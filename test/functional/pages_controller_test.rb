require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get food_outlets" do
    get :food_outlets
    assert_response :success
  end

end
