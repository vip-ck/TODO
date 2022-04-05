require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)
Dotenv::Railtie.load

module TODO
  class Application < Rails::Application
    
    config.load_defaults 6.1
    
    config.i18n.available_locales = %i[en ru]
    config.i18n.default_locale = :ru
    config.time_zone = 'Kyiv'
    config.paths.add Rails.root.join('app', 'api', 'helpers').to_s, eager_load: true
    config.paths.add Rails.root.join('lib').to_s, eager_load: true
    config.active_job.queue_adapter = :resque
    
    config.generators.system_tests = nil
  end
end
