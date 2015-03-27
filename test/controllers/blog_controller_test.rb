require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

end
