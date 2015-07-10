class PaymentsController < ApplicationController


  def create
    token = params[:stripeToken]
    product = Product.find(params[:product_id])
    begin
      charge = Stripe::Charge.create(
      	:amount => product.price_in_cents,
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
