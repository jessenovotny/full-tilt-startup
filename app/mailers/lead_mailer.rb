class LeadMailer < ApplicationMailer

  def send_offer lead
    @lead  = lead
    # set playbook attachment
    # attachments["Master Your Digital Presence Playbook.pdf"] = File.read('app/assets/documents/playbook.pdf')
    mail to: lead.email, subject: "playbook", bcc: 'hello@fulltiltdev.com'
  end

  def send_msg lead, msg
    @lead = lead
    @msg = msg
    mail to: "hello@fulltiltdev.com", subject: "Full Tilt Contact from #{lead.name}", reply_to: lead.email
  end

  def send_msg_confirm lead, msg
    @lead = lead
    mail to: lead.email, subject: "Thanks for reaching out!"
  end

  def optin_notify lead
    @lead = lead
    mail to: "hello@fulltiltdev.com", subject: "Someone requested your playbook!"
  end
end
