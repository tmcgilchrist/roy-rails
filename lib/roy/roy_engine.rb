module Roy
  class RoyEngine
    def initialize(file)
      @file = file
    end

    def compile()
      Roy.compile(@file)
    end
  end
end
