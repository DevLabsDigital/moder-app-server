require 'test_helper'

class ContabilPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contabil_pattern = contabil_patterns(:one)
  end

  test "should get index" do
    get contabil_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_contabil_pattern_url
    assert_response :success
  end

  test "should create contabil_pattern" do
    assert_difference('ContabilPattern.count') do
      post contabil_patterns_url, params: { contabil_pattern: {  } }
    end

    assert_redirected_to contabil_pattern_url(ContabilPattern.last)
  end

  test "should show contabil_pattern" do
    get contabil_pattern_url(@contabil_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_contabil_pattern_url(@contabil_pattern)
    assert_response :success
  end

  test "should update contabil_pattern" do
    patch contabil_pattern_url(@contabil_pattern), params: { contabil_pattern: {  } }
    assert_redirected_to contabil_pattern_url(@contabil_pattern)
  end

  test "should destroy contabil_pattern" do
    assert_difference('ContabilPattern.count', -1) do
      delete contabil_pattern_url(@contabil_pattern)
    end

    assert_redirected_to contabil_patterns_url
  end
end
