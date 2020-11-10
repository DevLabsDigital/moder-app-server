require 'test_helper'

class FrontDashboardFormulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @front_dashboard_formula = front_dashboard_formulas(:one)
  end

  test "should get index" do
    get front_dashboard_formulas_url
    assert_response :success
  end

  test "should get new" do
    get new_front_dashboard_formula_url
    assert_response :success
  end

  test "should create front_dashboard_formula" do
    assert_difference('FrontDashboardFormula.count') do
      post front_dashboard_formulas_url, params: { front_dashboard_formula: { formula_id: @front_dashboard_formula.formula_id, title: @front_dashboard_formula.title } }
    end

    assert_redirected_to front_dashboard_formula_url(FrontDashboardFormula.last)
  end

  test "should show front_dashboard_formula" do
    get front_dashboard_formula_url(@front_dashboard_formula)
    assert_response :success
  end

  test "should get edit" do
    get edit_front_dashboard_formula_url(@front_dashboard_formula)
    assert_response :success
  end

  test "should update front_dashboard_formula" do
    patch front_dashboard_formula_url(@front_dashboard_formula), params: { front_dashboard_formula: { formula_id: @front_dashboard_formula.formula_id, title: @front_dashboard_formula.title } }
    assert_redirected_to front_dashboard_formula_url(@front_dashboard_formula)
  end

  test "should destroy front_dashboard_formula" do
    assert_difference('FrontDashboardFormula.count', -1) do
      delete front_dashboard_formula_url(@front_dashboard_formula)
    end

    assert_redirected_to front_dashboard_formulas_url
  end
end
