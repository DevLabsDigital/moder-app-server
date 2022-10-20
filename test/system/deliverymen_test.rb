require "application_system_test_case"

class DeliverymenTest < ApplicationSystemTestCase
  setup do
    @deliveryman = deliverymen(:one)
  end

  test "visiting the index" do
    visit deliverymen_url
    assert_selector "h1", text: "Deliverymen"
  end

  test "creating a Deliveryman" do
    visit deliverymen_url
    click_on "New Deliveryman"

    fill_in "Address", with: @deliveryman.address
    fill_in "Birthday", with: @deliveryman.birthday
    fill_in "City", with: @deliveryman.city
    fill_in "Cpf cnpj", with: @deliveryman.cpf_cnpj
    fill_in "Email", with: @deliveryman.email
    fill_in "Name", with: @deliveryman.name
    fill_in "Neighborhood", with: @deliveryman.neighborhood
    fill_in "Phone", with: @deliveryman.phone
    fill_in "Rg", with: @deliveryman.rg
    fill_in "Uf", with: @deliveryman.uf
    fill_in "Vehicle color", with: @deliveryman.vehicle_color
    fill_in "Vehicle license plate", with: @deliveryman.vehicle_license_plate
    fill_in "Vehicle model", with: @deliveryman.vehicle_model
    fill_in "Vehicle year", with: @deliveryman.vehicle_year
    click_on "Create Deliveryman"

    assert_text "Deliveryman was successfully created"
    click_on "Back"
  end

  test "updating a Deliveryman" do
    visit deliverymen_url
    click_on "Edit", match: :first

    fill_in "Address", with: @deliveryman.address
    fill_in "Birthday", with: @deliveryman.birthday
    fill_in "City", with: @deliveryman.city
    fill_in "Cpf cnpj", with: @deliveryman.cpf_cnpj
    fill_in "Email", with: @deliveryman.email
    fill_in "Name", with: @deliveryman.name
    fill_in "Neighborhood", with: @deliveryman.neighborhood
    fill_in "Phone", with: @deliveryman.phone
    fill_in "Rg", with: @deliveryman.rg
    fill_in "Uf", with: @deliveryman.uf
    fill_in "Vehicle color", with: @deliveryman.vehicle_color
    fill_in "Vehicle license plate", with: @deliveryman.vehicle_license_plate
    fill_in "Vehicle model", with: @deliveryman.vehicle_model
    fill_in "Vehicle year", with: @deliveryman.vehicle_year
    click_on "Update Deliveryman"

    assert_text "Deliveryman was successfully updated"
    click_on "Back"
  end

  test "destroying a Deliveryman" do
    visit deliverymen_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deliveryman was successfully destroyed"
  end
end
