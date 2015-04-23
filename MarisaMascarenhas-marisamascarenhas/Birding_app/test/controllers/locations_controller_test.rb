require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get Show" do
    get :Show
    assert_response :success
  end

  test "should get New" do
    get :New
    assert_response :success
  end

  test "should get Create" do
    get :Create
    assert_response :success
  end

end
