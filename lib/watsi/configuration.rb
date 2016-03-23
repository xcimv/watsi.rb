module Watsi
  module Configuration
    BASE_URL = "https://watsi.org".freeze

    attr_accessor :base_url

    def self.extended(mod)
      mod.reset
    end

    def configure
      yield self
    end

    def config
    end

    def reset
      self.base_url = self::BASE_URL
    end
  end
end
