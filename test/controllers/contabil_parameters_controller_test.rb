require 'test_helper'

class ContabilParametersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contabil_parameters_index_url
    assert_response :success
  end

end
