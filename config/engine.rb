Bundler.require(:default) if defined?(Bundler)

require File.expand_path('../../lib/blog', __FILE__)
require "active_record/railtie"

module Blog
  class Engine < Rails::Engine
    config.generators do |g|
      g.orm :active_record
    end
  end
end

Rails.application = Blog::Engine.instance
