require "application_system_test_case"

class ContabilPatternsTest < ApplicationSystemTestCase
  setup do
    @contabil_pattern = contabil_patterns(:one)
  end

  test "visiting the index" do
    visit contabil_patterns_url
    assert_selector "h1", text: "Contabil Patterns"
  end

  test "creating a Contabil pattern" do
    visit contabil_patterns_url
    click_on "New Contabil Pattern"

    click_on "Create Contabil pattern"

    assert_text "Contabil pattern was successfully created"
    click_on "Back"
  end

  test "updating a Contabil pattern" do
    visit contabil_patterns_url
    click_on "Edit", match: :first

    click_on "Update Contabil pattern"

    assert_text "Contabil pattern was successfully updated"
    click_on "Back"
  end

  test "destroying a Contabil pattern" do
    visit contabil_patterns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contabil pattern was successfully destroyed"
  end
end
