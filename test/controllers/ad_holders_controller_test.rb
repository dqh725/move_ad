require 'test_helper'

class AdHoldersControllerTest < ActionController::TestCase
  setup do
    @ad_holder = ad_holders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_holders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_holder" do
    assert_difference('AdHolder.count') do
      post :create, ad_holder: { available: @ad_holder.available, description: @ad_holder.description, price: @ad_holder.price, type: @ad_holder.type }
    end

    assert_redirected_to ad_holder_path(assigns(:ad_holder))
  end

  test "should show ad_holder" do
    get :show, id: @ad_holder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_holder
    assert_response :success
  end

  test "should update ad_holder" do
    patch :update, id: @ad_holder, ad_holder: { available: @ad_holder.available, description: @ad_holder.description, price: @ad_holder.price, type: @ad_holder.type }
    assert_redirected_to ad_holder_path(assigns(:ad_holder))
  end

  test "should destroy ad_holder" do
    assert_difference('AdHolder.count', -1) do
      delete :destroy, id: @ad_holder
    end

    assert_redirected_to ad_holders_path
  end
end
