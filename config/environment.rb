# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { :host => 'bandturomanagement.heroku.com' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default :charset => "utf-8" 
  config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true,
  user_name: ENV["SMTP_USERNAME"],
  password: ENV["SMTP_PASSWORD"] 
  }