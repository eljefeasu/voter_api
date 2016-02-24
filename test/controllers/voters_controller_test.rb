require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create, name: "Jeb Bush", party: "Republican"
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
