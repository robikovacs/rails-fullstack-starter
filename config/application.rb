require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)

module RailsFullstackStarter
  class Application < Rails::Application
    config.load_defaults 6.1
    config.eager_load_paths += %W[#{config.root}/lib]
    config.generators do |g|
      g.test_framework  :rspec
      g.system_tests    false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
      g.channel         assets: false
      g.orm :active_record, primary_key_type: :uuid
    end
  end
end
