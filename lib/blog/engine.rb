module Blog
  class Engine < ::Rails::Engine
    namespace Blog

    config.generators do |g|
      g.orm :active_record
    end
  end
end
