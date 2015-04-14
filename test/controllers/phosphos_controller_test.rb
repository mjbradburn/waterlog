require 'test_helper'

class PhosphosControllerTest < ActionController::TestCase
  setup do
    @phospho = phosphos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phosphos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phospho" do
    assert_difference('Phospho.count') do
      post :create, phospho: {  }
    end

    assert_redirected_to phospho_path(assigns(:phospho))
  end

  test "should show phospho" do
    get :show, id: @phospho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phospho
    assert_response :success
  end

  test "should update phospho" do
    patch :update, id: @phospho, phospho: {  }
    assert_redirected_to phospho_path(assigns(:phospho))
  end

  test "should destroy phospho" do
    assert_difference('Phospho.count', -1) do
      delete :destroy, id: @phospho
    end

    assert_redirected_to phosphos_path
  end
end
