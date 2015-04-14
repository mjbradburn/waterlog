require 'test_helper'

class ChlorosControllerTest < ActionController::TestCase
  setup do
    @chloro = chloros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chloros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chloro" do
    assert_difference('Chloro.count') do
      post :create, chloro: {  }
    end

    assert_redirected_to chloro_path(assigns(:chloro))
  end

  test "should show chloro" do
    get :show, id: @chloro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chloro
    assert_response :success
  end

  test "should update chloro" do
    patch :update, id: @chloro, chloro: {  }
    assert_redirected_to chloro_path(assigns(:chloro))
  end

  test "should destroy chloro" do
    assert_difference('Chloro.count', -1) do
      delete :destroy, id: @chloro
    end

    assert_redirected_to chloros_path
  end
end
