require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get :index" do
    get ::index
    assert_response :success
  end

  test "should get :prodile" do
    get ::prodile
    assert_response :success
  end

end
