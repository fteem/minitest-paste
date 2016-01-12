require 'net/http'

module DPaste
  class API
    API_URL = "http://dpaste.com/api/v2/"

    def self.save(string)
      uri = URI(API_URL)
      response = Net::HTTP.post_form(uri, expiry_days: "10", syntax: "rb", content: string)
      response.body.strip
    end
  end
end
