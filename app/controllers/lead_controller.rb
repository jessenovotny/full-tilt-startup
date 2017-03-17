class LeadController < ApplicationController
  before_action :set_lead
  def contact
    # LeadMailer.send_msg(@lead, params[:message]).deliver_now
    @lead.update(update_lead)
  end

  def optin
    # binding.pry
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
