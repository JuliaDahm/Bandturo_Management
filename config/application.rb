require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  # Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  Bundler.require(:default, :assets, Rails.env)
end

module BandturoOneSheetApp
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.serve_static_assets = true
    config.action_mailer.default_url_options = { :host => 'bandturomanagement.heroku.com' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.perform_deliveries = true
    config.action_mailer.default :charset => "utf-8" 
    config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "bandturomanagement.heroku.com",
    authentication: :plain,
    enable_starttls_auto: true,
    user_name: ENV["SMTP_USERNAME"],
    password: ENV["SMTP_PASSWORD"] 
    }
  end
end
