require 'test_helper'

class AgenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get agencies_url
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post agencies_url, params: { agency: {  } }
    end

    assert_response 201
  end

  test "should show agency" do
    get agency_url(@agency)
    assert_response :success
  end

  test "should update agency" do
    patch agency_url(@agency), params: { agency: {  } }
    assert_response 200
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete agency_url(@agency)
    end

    assert_response 204
  end
end
