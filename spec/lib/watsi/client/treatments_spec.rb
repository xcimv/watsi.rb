require "spec_helper"

module Watsi
  describe Client do
    context "Treatments" do
      let(:client) { described_class.new }

      describe "#treatments_in_funding" do
        it "returns the list of treatments" do
          VCR.use_cassette("treatments_in_funding") do
            data = client.treatments_in_funding
            expect(data).to be_an(Array)

            record = data.first
            expect(record.keys).to include(*%w(id token name url profile_url))
          end
        end
      end

      describe "#treatment_info" do
        let(:id) { "9880965bf955" }

        it "returns the treatment info" do
          VCR.use_cassette("treatment_info") do
            data = client.treatment_info(id)
            expect(data).to be_a(Hash)

            expect(data.keys).to include(*%w(id token name url profile_url))
          end
        end
      end
    end
  end
end
