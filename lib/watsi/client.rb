require "watsi/client/treatments"

require "net/http"
require "json"

module Watsi
  class Client
    include Treatments

    BASE_URL = "https://watsi.org".freeze

    attr_accessor :options

    def initialize(base_url: nil)
      self.options = {
        base_url: base_url || BASE_URL
      }
    end

    protected

    def get(path)
      uri = URI("#{options[:base_url]}#{path}")

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") do |http|
        request = Net::HTTP::Get.new(uri, "User-Agent" => user_agent)
        response = http.request request
        JSON.parse(response.body) if response.body
      end
    end

    def user_agent
      "watsi.rb #{VERSION}"
    end
  end
end
