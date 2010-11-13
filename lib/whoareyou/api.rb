require 'crack'
require 'rest_client'

module Whoareyou
  module Api
    def get(uri)
      Crack::JSON.parse(RestClient.get(uri))      
    end
  end
end
