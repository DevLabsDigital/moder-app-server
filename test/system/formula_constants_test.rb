require "application_system_test_case"

class FormulaConstantsTest < ApplicationSystemTestCase
  setup do
    @formula_constant = formula_constants(:one)
  end

  test "visiting the index" do
    visit formula_constants_url
    assert_selector "h1", text: "Formula Constants"
  end

  test "creating a Formula constant" do
    visit formula_constants_url
    click_on "New Formula Constant"

    fill_in "Label", with: @formula_constant.label
    fill_in "Value", with: @formula_constant.value
    click_on "Create Formula constant"

    assert_text "Formula constant was successfully created"
    click_on "Back"
  end

  test "updating a Formula constant" do
    visit formula_constants_url
    click_on "Edit", match: :first

    fill_in "Label", with: @formula_constant.label
    fill_in "Value", with: @formula_constant.value
    click_on "Update Formula constant"

    assert_text "Formula constant was successfully updated"
    click_on "Back"
  end

  test "destroying a Formula constant" do
    visit formula_constants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formula constant was successfully destroyed"
  end
end
