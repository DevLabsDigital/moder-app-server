require 'test_helper'

class DeliverymenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deliveryman = deliverymen(:one)
  end

  test "should get index" do
    get deliverymen_url
    assert_response :success
  end

  test "should get new" do
    get new_deliveryman_url
    assert_response :success
  end

  test "should create deliveryman" do
    assert_difference('Deliveryman.count') do
      post deliverymen_url, params: { deliveryman: { address: @deliveryman.address, birthday: @deliveryman.birthday, city: @deliveryman.city, cpf_cnpj: @deliveryman.cpf_cnpj, email: @deliveryman.email, name: @deliveryman.name, neighborhood: @deliveryman.neighborhood, phone: @deliveryman.phone, rg: @deliveryman.rg, uf: @deliveryman.uf, vehicle_color: @deliveryman.vehicle_color, vehicle_license_plate: @deliveryman.vehicle_license_plate, vehicle_model: @deliveryman.vehicle_model, vehicle_year: @deliveryman.vehicle_year } }
    end

    assert_redirected_to deliveryman_url(Deliveryman.last)
  end

  test "should show deliveryman" do
    get deliveryman_url(@deliveryman)
    assert_response :success
  end

  test "should get edit" do
    get edit_deliveryman_url(@deliveryman)
    assert_response :success
  end

  test "should update deliveryman" do
    patch deliveryman_url(@deliveryman), params: { deliveryman: { address: @deliveryman.address, birthday: @deliveryman.birthday, city: @deliveryman.city, cpf_cnpj: @deliveryman.cpf_cnpj, email: @deliveryman.email, name: @deliveryman.name, neighborhood: @deliveryman.neighborhood, phone: @deliveryman.phone, rg: @deliveryman.rg, uf: @deliveryman.uf, vehicle_color: @deliveryman.vehicle_color, vehicle_license_plate: @deliveryman.vehicle_license_plate, vehicle_model: @deliveryman.vehicle_model, vehicle_year: @deliveryman.vehicle_year } }
    assert_redirected_to deliveryman_url(@deliveryman)
  end

  test "should destroy deliveryman" do
    assert_difference('Deliveryman.count', -1) do
      delete deliveryman_url(@deliveryman)
    end

    assert_redirected_to deliverymen_url
  end
end
