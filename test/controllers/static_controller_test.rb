require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get uploads" do
    get :uploads
    assert_response :success
  end

end
