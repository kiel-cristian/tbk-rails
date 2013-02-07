require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Example
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    config.secret_token = '0fd18b23f92f4ecee5516cf61cd564720731a67f125f5e4ac43df64c3016c9fc1a95dfa1f22a1e1511d2e26c98f9ade9097dbcf99ee2ddd4cdc5ccdbd6e3b5a3'

    config.active_support.deprecation = :log

    config.session_store :cookie_store, key: '_example_session'
  end
end
