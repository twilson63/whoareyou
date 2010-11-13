require 'cgi'

module Whoareyou
  module Category
    def category(text)
      get(Whoareyou::CATEGORY + CGI.escape(text))['category']
    rescue
      'unknown'     
    end
  end
end
