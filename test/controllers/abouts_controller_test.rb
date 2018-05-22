require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get abouts_about_url
    assert_response :success
  end

end
