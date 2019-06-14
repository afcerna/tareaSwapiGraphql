require 'test_helper'

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get person_show_url
    assert_response :success
  end

end
