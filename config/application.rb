require File.expand_path('../boot', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require "action_controller/railtie"

Bundler.require
require 'blog'

module Blog
  class Application < Rails::Application
    namespace Blog

    config.generators do |g|
      g.orm             :datamapper
      g.template_engine :haml
      g.test_framework  :rspec, :fixture => false
    end

  end
end
