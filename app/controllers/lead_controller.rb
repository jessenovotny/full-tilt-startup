class LeadController < ApplicationController
  before_action :set_lead

  def contact
    update_lead
    LeadMailer.send_msg(@lead, params[:message]).deliver_now
    LeadMailer.send_msg_confirm(@lead, params[:message]).deliver_now
  end

  def optin
    LeadMailer.send_offer(@lead).deliver_now
  end

  private

  def lead_params
    params.require(:lead).permit(:email)
  end

  def update_lead
    params.require(:lead).permit(:name, :email, :phone, :website)
  end

  def set_lead
    @lead = Lead.find_or_create_by(lead_params)    
  end
end
