module Watsi
  class Client
    module Treatments
      def treatments_in_funding
        data = get("/fund-treatments.json")
        data["profiles"]
      end

      def treatment_info(id)
        get("/profile/#{id}.json")
      end
    end
  end
end
