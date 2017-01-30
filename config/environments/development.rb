Rails.application.configure do

  config.cache_classes = false

  config.eager_load = false

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_load


  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true


  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
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

  config.paperclip_defaults = {
  storage: :s3,
  :s3_region => 'us-east-1',
  s3_credentials: {
    bucket: ENV.fetch('S3_BUCKET_NAME'),
    access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    s3_region: ENV.fetch('AWS_REGION'),
  }
}

end
