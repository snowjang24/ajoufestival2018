require 'test_helper'

class ProgramControllerTest < ActionDispatch::IntegrationTest
  test "should get school_event" do
    get program_school_event_url
    assert_response :success
  end

  test "should get Concert" do
    get program_Concert_url
    assert_response :success
  end

end
