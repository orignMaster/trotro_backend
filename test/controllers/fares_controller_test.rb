require 'test_helper'

class FaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fare = fares(:one)
  end

  test "should get index" do
    get fares_url
    assert_response :success
  end

  test "should create fare" do
    assert_difference('Fare.count') do
      post fares_url, params: { fare: {  } }
    end

    assert_response 201
  end

  test "should show fare" do
    get fare_url(@fare)
    assert_response :success
  end

  test "should update fare" do
    patch fare_url(@fare), params: { fare: {  } }
    assert_response 200
  end

  test "should destroy fare" do
    assert_difference('Fare.count', -1) do
      delete fare_url(@fare)
    end

    assert_response 204
  end
end
