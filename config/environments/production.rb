Rails.application.configure do

  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.active_support.deprecation = :notify

  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  config.assets.initialize_on_precompile = false
  config.assets.compile = true
  config.assets.digest = true


  config.logger = Logger.new(STDOUT)
  config.logger.level = Logger::DEBUG

  config.i18n.fallbacks = true


  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new
  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
  config.serve_static_assets = false
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'  
  
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
