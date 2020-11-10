require "application_system_test_case"

class ConsultingsTest < ApplicationSystemTestCase
  setup do
    @consulting = consultings(:one)
  end

  test "visiting the index" do
    visit consultings_url
    assert_selector "h1", text: "Consultings"
  end

  test "creating a Consulting" do
    visit consultings_url
    click_on "New Consulting"

    fill_in "Enterprise", with: @consulting.enterprise_id
    fill_in "Profile", with: @consulting.profile_id
    click_on "Create Consulting"

    assert_text "Consulting was successfully created"
    click_on "Back"
  end

  test "updating a Consulting" do
    visit consultings_url
    click_on "Edit", match: :first

    fill_in "Enterprise", with: @consulting.enterprise_id
    fill_in "Profile", with: @consulting.profile_id
    click_on "Update Consulting"

    assert_text "Consulting was successfully updated"
    click_on "Back"
  end

  test "destroying a Consulting" do
    visit consultings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consulting was successfully destroyed"
  end
end
