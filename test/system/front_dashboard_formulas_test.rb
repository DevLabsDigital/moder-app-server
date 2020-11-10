require "application_system_test_case"

class FrontDashboardFormulasTest < ApplicationSystemTestCase
  setup do
    @front_dashboard_formula = front_dashboard_formulas(:one)
  end

  test "visiting the index" do
    visit front_dashboard_formulas_url
    assert_selector "h1", text: "Front Dashboard Formulas"
  end

  test "creating a Front dashboard formula" do
    visit front_dashboard_formulas_url
    click_on "New Front Dashboard Formula"

    fill_in "Formula", with: @front_dashboard_formula.formula_id
    fill_in "Title", with: @front_dashboard_formula.title
    click_on "Create Front dashboard formula"

    assert_text "Front dashboard formula was successfully created"
    click_on "Back"
  end

  test "updating a Front dashboard formula" do
    visit front_dashboard_formulas_url
    click_on "Edit", match: :first

    fill_in "Formula", with: @front_dashboard_formula.formula_id
    fill_in "Title", with: @front_dashboard_formula.title
    click_on "Update Front dashboard formula"

    assert_text "Front dashboard formula was successfully updated"
    click_on "Back"
  end

  test "destroying a Front dashboard formula" do
    visit front_dashboard_formulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Front dashboard formula was successfully destroyed"
  end
end
