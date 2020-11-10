require 'test_helper'

class FormulaConstantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formula_constant = formula_constants(:one)
  end

  test "should get index" do
    get formula_constants_url
    assert_response :success
  end

  test "should get new" do
    get new_formula_constant_url
    assert_response :success
  end

  test "should create formula_constant" do
    assert_difference('FormulaConstant.count') do
      post formula_constants_url, params: { formula_constant: { label: @formula_constant.label, value: @formula_constant.value } }
    end

    assert_redirected_to formula_constant_url(FormulaConstant.last)
  end

  test "should show formula_constant" do
    get formula_constant_url(@formula_constant)
    assert_response :success
  end

  test "should get edit" do
    get edit_formula_constant_url(@formula_constant)
    assert_response :success
  end

  test "should update formula_constant" do
    patch formula_constant_url(@formula_constant), params: { formula_constant: { label: @formula_constant.label, value: @formula_constant.value } }
    assert_redirected_to formula_constant_url(@formula_constant)
  end

  test "should destroy formula_constant" do
    assert_difference('FormulaConstant.count', -1) do
      delete formula_constant_url(@formula_constant)
    end

    assert_redirected_to formula_constants_url
  end
end
