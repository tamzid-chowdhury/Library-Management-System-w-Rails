require 'test_helper'

class PatronControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patron_index_url
    assert_response :success
  end

end
