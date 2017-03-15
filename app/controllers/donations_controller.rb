class DonationsController < ApplicationController

  def index
    @donation = Donation.new    
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      flash[:notice] = "Thanks for donation :)"                      
      redirect_to @donation.paypal_url(donations_path)
    else
      render :index
    end
  end

  protect_from_forgery except: [:hook]
  def hook
    flash[:notice] = "Thanks for donation :)"                    
    params.permit! # Permit all Paypal input params
    status = params[:payment_status]
    if status == "Completed"
      @donation = Donation.find params[:invoice]              
      @donation.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now
    end
    flash[:alert] = "Something went wrong"
    render nothing: true
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:full_name, :email, :message, :amount)
    end
end