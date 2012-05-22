require 'tilt/template'

module Roy
  class RoyTemplate < Tilt::Template
    self.default_mime_type = 'application/javascript'

    def self.engine_initialized?
      true
    end

    def initialize_engine
    end

    def prepare
      @engine = RoyEngine.new(@file, options)
    end

    def evaluate(scope, locals, &block)
      @output ||= @engine.compile(data)
    end
  end
end
