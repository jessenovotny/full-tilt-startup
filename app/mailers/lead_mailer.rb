class LeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_mailer.send_offer.subject
  #
  def send_offer (lead)
    @lead  = lead
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def send_msg (lead, msg)
    @lead = lead
    @msg = msg
    mail to: "to@example.org"
  end
end
