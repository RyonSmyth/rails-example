# if Rails.env.production?
#  Rails.configuration.stripe = {
#    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
#    :secret_key      => ENV['STRIPE_SECRET_KEY']
#  }
# else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_n1KMjfItMNfQcvP1pf1mSb4u',
    :secret_key      => 'sk_test_LwTNxIOrCOWBY2PyPSEw8U5R'
  }
# end

Stripe.api_key = Rails.configuration.stripe[:secret_key]