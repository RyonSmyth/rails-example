class PaymentsController < ApplicationController

  def create
    token = params[:stripeToken]
    
    begin
      charge = Stripe::Charge.create(
      	:amount => 700,
      	:currency => "usd",
      	:source => token,
      	:description => params[:stripeEmail]
      )

    rescue Stripe::CardError => e
      body = e.json_body
      err = body [:error]
      flash[:error] = "Unfortuantly, there was an error processing your payment: #{err[:message]}"
    end

  end
end
