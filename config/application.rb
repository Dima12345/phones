require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module MyApi
  class Application < Rails::Application
    config.paths.add File.join('app', 'serrializers'), glob: File.join('**', '*.rb')
    config.api_only = true
  end
end
