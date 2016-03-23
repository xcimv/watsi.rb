require "spec_helper"

module Watsi
  describe Client do
    let(:client) { described_class.new }

    context "client options" do
      context "base_url" do
        let(:client) { described_class.new(base_url: "https://localhost") }

        it "can be overridden" do
          stub_request(:get, "https://localhost/")
          client.send(:get, "/")
        end
      end
    end

    context "user agent" do
      let(:user_agent) { "watsi.rb #{Watsi::VERSION}" }

      it "identifies as a ruby client with the gem version" do
        stub_request(:get, "https://watsi.org/").with(headers: { "User-Agent" => user_agent })
        client.send(:get, "/")
      end
    end
  end
end
