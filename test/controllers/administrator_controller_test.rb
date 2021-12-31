require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrator_index_url
    assert_response :success
  end

end
