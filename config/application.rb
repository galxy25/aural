require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Aural
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Setup logging to stdout
    # since we expect this app to run in
    # a container with an ephermal file system
	  logger           = ActiveSupport::Logger.new(STDOUT)
		logger.formatter = config.log_formatter
		config.log_tags  = [:subdomain, :uuid]
		config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end
end
