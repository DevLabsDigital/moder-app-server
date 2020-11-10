require 'test_helper'

class BudgetControllerTest < ActionDispatch::IntegrationTest
  test "should get export" do
    get budget_export_url
    assert_response :success
  end

  test "should get import" do
    get budget_import_url
    assert_response :success
  end

end
