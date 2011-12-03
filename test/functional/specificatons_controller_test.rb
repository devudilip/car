require 'test_helper'

class SpecificatonsControllerTest < ActionController::TestCase
  setup do
    @specificaton = specificatons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specificatons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specificaton" do
    assert_difference('Specificaton.count') do
      post :create, :specificaton => @specificaton.attributes
    end

    assert_redirected_to specificaton_path(assigns(:specificaton))
  end

  test "should show specificaton" do
    get :show, :id => @specificaton.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @specificaton.to_param
    assert_response :success
  end

  test "should update specificaton" do
    put :update, :id => @specificaton.to_param, :specificaton => @specificaton.attributes
    assert_redirected_to specificaton_path(assigns(:specificaton))
  end

  test "should destroy specificaton" do
    assert_difference('Specificaton.count', -1) do
      delete :destroy, :id => @specificaton.to_param
    end

    assert_redirected_to specificatons_path
  end
end
