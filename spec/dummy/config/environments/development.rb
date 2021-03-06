Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end


  config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :address => '127.0.0.1',
  #   :port => 1025
  # }
  # install mailcatcher to test deliveries locally
  # https://mailcatcher.me/


  config.action_mailer.smtp_settings = {
    :address => "smtp.mailtrap.io",
    :domain => "smtp.mailtrap.io",
    :port => 2525,
    :authentication => :cram_md5,
    :user_name => "ab690bb6f741b2",
    :password => "90432525dad621"
  }
  #  care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.perform_caching = false


  # config.action_mailer.delivery_method = :aws_sdk
  # disabling mails for now
  # config.action_mailer.delivery_method = :test
  # should place emails here:
  # ActionMailer::Base.deliveries


  # config.action_mailer.smtp_settings = {
  #   address: "smtp.mandrillapp.com",
  #   authentication: :plain,
  #   domain: "start.inmolite.com",
  #   enable_starttls_auto: true,
  #   password: Rails.application.secrets.smtp_pwd,
  #   port: "587",
  #   user_name: Rails.application.secrets.smtp_user
  # }
  # config.action_mailer.default_url_options = { host: "propertywebbuilder.com" }
  # to allow links in template like:
  # <%= link_to 'welcome', welcome_url %>
  # config.action_mailer.asset_host = 'http://propertywebbuilder.com'
  # Now you can display an image inside your email.
  # <%= image_tag 'image.jpg' %>


  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  # config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
