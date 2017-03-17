class LeadMailer < ApplicationMailer
  default from: 'Jesse Novotny <hello@fulltiltdev.com>'

  def send_offer lead
    @lead  = lead
    # set playbook attachment
    mail to: lead.email, subject: "playbook", bcc: 'hello@fulltiltdev.com'
  end

  def send_msg lead, msg
    @lead = lead
    @msg = msg
    mail to: "hello@fulltiltdev.com", from: "#{lead.name} <#{lead.email}>", reply_to: "<#{lead.email}>"
  end

  def send_msg_confirm lead, msg
    @lead = lead
    mail to: lead.email
  end
end
