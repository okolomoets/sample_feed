require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleFeed
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.active_record.observers = Dir.glob('app/observers/*')
                                         .select{ |e| File.file? e }
                                         .map{|file| file.split("/").last.split(".").first.to_sym}
  end
end
