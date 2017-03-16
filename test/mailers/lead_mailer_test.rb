require 'test_helper'

class LeadMailerTest < ActionMailer::TestCase
  test "send_offer" do
    mail = LeadMailer.send_offer
    assert_equal "Send offer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
