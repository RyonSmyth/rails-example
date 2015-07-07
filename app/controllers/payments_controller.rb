class PaymentsController < ApplicationController

  Stripe.api_key = "sk_test_LwTNxIOrCOWBY2PyPSEw8U5R"
  def create
    token = params[:stripeToken]
    product = Product.find(params[:product_id])
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
