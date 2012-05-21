module Roy
  class RoyRails < Rails::Engine
    initializer :register_roy do |app|
      app.assets.register_engine '.roy', RoyTemplate
    end
  end
end
