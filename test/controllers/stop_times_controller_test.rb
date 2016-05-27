require 'test_helper'

class StopTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stop_time = stop_times(:one)
  end

  test "should get index" do
    get stop_times_url
    assert_response :success
  end

  test "should create stop_time" do
    assert_difference('StopTime.count') do
      post stop_times_url, params: { stop_time: {  } }
    end

    assert_response 201
  end

  test "should show stop_time" do
    get stop_time_url(@stop_time)
    assert_response :success
  end

  test "should update stop_time" do
    patch stop_time_url(@stop_time), params: { stop_time: {  } }
    assert_response 200
  end

  test "should destroy stop_time" do
    assert_difference('StopTime.count', -1) do
      delete stop_time_url(@stop_time)
    end

    assert_response 204
  end
end
