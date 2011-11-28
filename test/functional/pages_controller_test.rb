require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get newcars" do
    get :newcars
    assert_response :success
  end

  test "should get usedcars" do
    get :usedcars
    assert_response :success
  end

  test "should get sellcar" do
    get :sellcar
    assert_response :success
  end

  test "should get research" do
    get :research
    assert_response :success
  end

  test "should get finance" do
    get :finance
    assert_response :success
  end

end
