module Whoru  

  INFOCHIMPS_APIKEY = ENV['INFOCHIMPS']
  ALCHEMY = ENV['ALCHEMY']

  TWITTER_API = 'http://api.twitter.com'
  FRIENDS = [TWITTER_API, '1/friends/ids'].join('/')
  PROFILE = [TWITTER_API, '1/users/show' ].join('/')

  INFOCHIMPS_API = 'http://api.infochimps.com'
  RANK = [INFOCHIMPS_API, 'soc/net/tw/trstrank.json'].join('/')
  
  CATEGORY = "http://access.alchemyapi.com/calls/text/TextGetCategory?apikey=#{ALCHEMY}&outputMode=json&text="
end
