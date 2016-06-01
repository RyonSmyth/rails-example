class PaymentsController < ApplicationController


  def create
    token = params[:stripeToken]
    product = Product.find(params[:product_id])
    begin

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],

      )

      charge = Stripe::Charge.create(
      	:amount => product.price_in_cents,
      	:currency => "usd",
      	:source => token,
      	:description => params[:stripeEmail],
      )
      UserMailer.payments_email(customer).deliver

    rescue Stripe::CardError => e
      body = e.json_body
      err = body [:error]
      flash[:error] = "Unfortuantly, there was an error processing your payment: #{err[:message]}"
    end

  end
end
