#Neccesary configuration for TBK ( se also app/controllers/webpay_controller)
TBK.configure do |config|

  # Configure rails environment
  config.environment :test

  # Configure your commerce id (given KCC test id)
  config.commerce_id 597026007976

  # Configure your commerce RSA key here
  # config.commerce_key SOME_RSA_KEY
end

# Also need to configure the following vars for TBKRails

# Configure server ip addres
# tbk_rails_confirmation_url_ip = '127.0.0.1'

# Default port http (80)
# tbk_rails_confirmation_url_port = '80'

# Default protocol http
# tbk_rails_confirmation_url_protocol = 'http'