module Whoareyou
  module Rank
    def rank(friends)
      ranked_friends = []
      friends[0..1000].each_with_index do |friend, index|
        trust_rank = trstrank(friend)
        ranked_friends << trust_rank unless trust_rank == {}  
      end
      ranked_friends.sort_by { |t| t['trstrank'] }.reverse
    end
    
    private
    
    def trstrank(friend)
      get [RANK,"user_id=#{friend}&apikey=#{Whoareyou::INFOCHIMPS_APIKEY}"].join('?')
    rescue
      {}    
    end
    
  end
end
