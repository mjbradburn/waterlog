require 'test_helper'

class SecchiDepthsControllerTest < ActionController::TestCase
  setup do
    @secchi_depth = secchi_depths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secchi_depths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secchi_depth" do
    assert_difference('SecchiDepth.count') do
      post :create, secchi_depth: {  }
    end

    assert_redirected_to secchi_depth_path(assigns(:secchi_depth))
  end

  test "should show secchi_depth" do
    get :show, id: @secchi_depth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secchi_depth
    assert_response :success
  end

  test "should update secchi_depth" do
    patch :update, id: @secchi_depth, secchi_depth: {  }
    assert_redirected_to secchi_depth_path(assigns(:secchi_depth))
  end

  test "should destroy secchi_depth" do
    assert_difference('SecchiDepth.count', -1) do
      delete :destroy, id: @secchi_depth
    end

    assert_redirected_to secchi_depths_path
  end
end
