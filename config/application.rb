require File.expand_path('../boot', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rails/all'

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

    config.secret_token = "adcjh9jh9fcnuscn9uqnc9qun9cnq9nc9qnew9q7ncewq"

    routes.draw do
      mount Blog::Engine => '/'
    end
  end
end

