require 'test_helper'

class ExistencesControllerTest < ActionController::TestCase
  setup do
    @existence = existences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:existences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create existence" do
    assert_difference('Existence.count') do
      post :create, existence: {  }
    end

    assert_redirected_to existence_path(assigns(:existence))
  end

  test "should show existence" do
    get :show, id: @existence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @existence
    assert_response :success
  end

  test "should update existence" do
    patch :update, id: @existence, existence: {  }
    assert_redirected_to existence_path(assigns(:existence))
  end

  test "should destroy existence" do
    assert_difference('Existence.count', -1) do
      delete :destroy, id: @existence
    end

    assert_redirected_to existences_path
  end
end
