class LeadMailer < ApplicationMailer

  def send_offer lead
    @lead  = lead
    # set playbook attachment
    mail to: lead.email, subject: "playbook", bcc: 'hello@fulltiltdev.com'
  end

  def send_msg lead, msg
    @lead = lead
    @msg = msg
    mail(to: "hello@fulltiltdev.com", subject: "Full Tilt Contact from #{lead.name}", reply_to: lead.email)
  end

  def send_msg_confirm lead, msg
    @lead = lead
    mail to: lead.email, subject: "Thanks for reaching out!"
  end
end
