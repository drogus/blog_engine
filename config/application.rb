require File.expand_path('../boot', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rails/all'

Bundler.require
require 'blog'

module Blog
  class Application < Rails::Application
    namespace Blog

    config.secret_token = "adcjh9jh9fcnuscn9uqnc9qun9cnq9nc9qnew9q7ncewq"
    config.root = "tmp"
    config.paths.config.environment "../config/environment.rb"
    config.paths.config.database "../config/database.yml"
    config.paths.db "../db"
    config.paths.db.migrate "../db/migrate"

    def routes
      Blog::Engine.routes
    end
  end
end
