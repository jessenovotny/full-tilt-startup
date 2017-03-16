require 'test_helper'

class LeadControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get lead_contact_url
    assert_response :success
  end

  test "should get optin" do
    get lead_optin_url
    assert_response :success
  end

end
