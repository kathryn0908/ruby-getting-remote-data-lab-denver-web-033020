require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    @url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url
      end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end


    # response_body = GetRequester.new.get_response_body
    # puts response_body
