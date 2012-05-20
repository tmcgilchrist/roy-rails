require 'rails/railtie'

module Roy::Rails
  class Railtie < ::Rails::Railtie
    config.app_generators.javascript_engine :roy
  end
end
