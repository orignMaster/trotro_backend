require 'test_helper'

class FareRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fare_rule = fare_rules(:one)
  end

  test "should get index" do
    get fare_rules_url
    assert_response :success
  end

  test "should create fare_rule" do
    assert_difference('FareRule.count') do
      post fare_rules_url, params: { fare_rule: {  } }
    end

    assert_response 201
  end

  test "should show fare_rule" do
    get fare_rule_url(@fare_rule)
    assert_response :success
  end

  test "should update fare_rule" do
    patch fare_rule_url(@fare_rule), params: { fare_rule: {  } }
    assert_response 200
  end

  test "should destroy fare_rule" do
    assert_difference('FareRule.count', -1) do
      delete fare_rule_url(@fare_rule)
    end

    assert_response 204
  end
end
