require 'test_helper'

class ConsultingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulting = consultings(:one)
  end

  test "should get index" do
    get consultings_url
    assert_response :success
  end

  test "should get new" do
    get new_consulting_url
    assert_response :success
  end

  test "should create consulting" do
    assert_difference('Consulting.count') do
      post consultings_url, params: { consulting: { enterprise_id: @consulting.enterprise_id, profile_id: @consulting.profile_id } }
    end

    assert_redirected_to consulting_url(Consulting.last)
  end

  test "should show consulting" do
    get consulting_url(@consulting)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulting_url(@consulting)
    assert_response :success
  end

  test "should update consulting" do
    patch consulting_url(@consulting), params: { consulting: { enterprise_id: @consulting.enterprise_id, profile_id: @consulting.profile_id } }
    assert_redirected_to consulting_url(@consulting)
  end

  test "should destroy consulting" do
    assert_difference('Consulting.count', -1) do
      delete consulting_url(@consulting)
    end

    assert_redirected_to consultings_url
  end
end
