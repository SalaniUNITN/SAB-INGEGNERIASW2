require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProgettoSW2
  class Application < Rails::Application
    config.generators do |g|
      g.factory_bot false
    end
    config.generators do |g|
  g.factory_bot dir: 'custom/dir/for/factories'
endr
  end
end
