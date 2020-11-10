require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get admins_menu_url
    assert_response :success
  end

end
