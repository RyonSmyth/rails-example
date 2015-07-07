if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => 'pk_live_ieopulzJqkG4GxcSnPx0gRpl',
    :secret_key      => 'sk_live_6ViWhvDZpY2k69pvnapTOECR'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_n1KMjfItMNfQcvP1pf1mSb4u',
    :secret_key      => 'sk_test_LwTNxIOrCOWBY2PyPSEw8U5R'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]