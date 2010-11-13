require 'cgi'

module Whoareyou
  module Category
    def category(text)
      get(Whoru::CATEGORY + CGI.escape(text))['category']
    rescue
      'unknown'     
    end
  end
end
