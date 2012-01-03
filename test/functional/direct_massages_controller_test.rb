require 'test_helper'

class DirectMassagesControllerTest < ActionController::TestCase
  setup do
    @direct_massage = direct_massages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direct_massages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direct_massage" do
    assert_difference('DirectMassage.count') do
      post :create, direct_massage: @direct_massage.attributes
    end

    assert_redirected_to direct_massage_path(assigns(:direct_massage))
  end

  test "should show direct_massage" do
    get :show, id: @direct_massage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direct_massage.to_param
    assert_response :success
  end

  test "should update direct_massage" do
    put :update, id: @direct_massage.to_param, direct_massage: @direct_massage.attributes
    assert_redirected_to direct_massage_path(assigns(:direct_massage))
  end

  test "should destroy direct_massage" do
    assert_difference('DirectMassage.count', -1) do
      delete :destroy, id: @direct_massage.to_param
    end

    assert_redirected_to direct_massages_path
  end
end
