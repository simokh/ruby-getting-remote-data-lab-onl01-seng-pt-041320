require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
 

class GetRequester

    def initialize(url)  
    end 

    def get_response_body 
        request = URI.parse(URL)
        response = Net::HTTP.get_response(request)
        response.body
    end  

    def parse_json
        programs = JSON.parse(self.get_response_body)
    end

    def get_data
        data = parse_json
        data.collect do |data|
          data["name"]
        end 
      end
end 

# new_request = GetRequester.new(URI)
# new_request.get_response_body
# new_request.parse_json
# new_request.get_data

# binding.pry 
# test = [1,2,3]
