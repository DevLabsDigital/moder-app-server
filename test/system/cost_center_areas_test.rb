require "application_system_test_case"

class CostCenterAreasTest < ApplicationSystemTestCase
  setup do
    @cost_center_area = cost_center_areas(:one)
  end

  test "visiting the index" do
    visit cost_center_areas_url
    assert_selector "h1", text: "Cost Center Areas"
  end

  test "creating a Cost center area" do
    visit cost_center_areas_url
    click_on "New Cost Center Area"

    fill_in "Label", with: @cost_center_area.label
    click_on "Create Cost center area"

    assert_text "Cost center area was successfully created"
    click_on "Back"
  end

  test "updating a Cost center area" do
    visit cost_center_areas_url
    click_on "Edit", match: :first

    fill_in "Label", with: @cost_center_area.label
    click_on "Update Cost center area"

    assert_text "Cost center area was successfully updated"
    click_on "Back"
  end

  test "destroying a Cost center area" do
    visit cost_center_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cost center area was successfully destroyed"
  end
end
