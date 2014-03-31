require 'test_helper'

class PindsControllerTest < ActionController::TestCase
  setup do
    @pind = pinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pind" do
    assert_difference('Pind.count') do
      post :create, pind: { description: @pind.description }
    end

    assert_redirected_to pind_path(assigns(:pind))
  end

  test "should show pind" do
    get :show, id: @pind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pind
    assert_response :success
  end

  test "should update pind" do
    patch :update, id: @pind, pind: { description: @pind.description }
    assert_redirected_to pind_path(assigns(:pind))
  end

  test "should destroy pind" do
    assert_difference('Pind.count', -1) do
      delete :destroy, id: @pind
    end

    assert_redirected_to pinds_path
  end
end
