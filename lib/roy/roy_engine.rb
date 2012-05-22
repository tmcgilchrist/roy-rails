module Roy
  class RoyEngine
    def initialize(file, options)
      @file = file
      @options = options
    end

    def compile(data)
      Roy.compile(data)
    end
  end
end
