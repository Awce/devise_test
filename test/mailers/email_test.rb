require 'test_helper'

class EmailTest < ActionMailer::TestCase
  test "enviar" do
    mail = Email.enviar
    assert_equal "Enviar", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
