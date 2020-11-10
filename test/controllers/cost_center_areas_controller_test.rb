require 'test_helper'

class CostCenterAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_center_area = cost_center_areas(:one)
  end

  test "should get index" do
    get cost_center_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_center_area_url
    assert_response :success
  end

  test "should create cost_center_area" do
    assert_difference('CostCenterArea.count') do
      post cost_center_areas_url, params: { cost_center_area: { label: @cost_center_area.label } }
    end

    assert_redirected_to cost_center_area_url(CostCenterArea.last)
  end

  test "should show cost_center_area" do
    get cost_center_area_url(@cost_center_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_center_area_url(@cost_center_area)
    assert_response :success
  end

  test "should update cost_center_area" do
    patch cost_center_area_url(@cost_center_area), params: { cost_center_area: { label: @cost_center_area.label } }
    assert_redirected_to cost_center_area_url(@cost_center_area)
  end

  test "should destroy cost_center_area" do
    assert_difference('CostCenterArea.count', -1) do
      delete cost_center_area_url(@cost_center_area)
    end

    assert_redirected_to cost_center_areas_url
  end
end
