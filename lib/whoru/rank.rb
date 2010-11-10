module Whoru
  module Rank
    def rank(friends)
      ranked_friends = []
      friends.each_with_index do |friend, index|
        trust_rank = trstrank(friend)
        ranked_friends << trust_rank unless trust_rank == {}  
        #break if index > 5
      end
      ranked_friends.sort_by { |t| t['trstrank'] }.reverse
    end
    
    private
    
    def trstrank(friend)
      get [RANK,"user_id=#{friend}&apikey=#{Whoru::INFOCHIMPS_APIKEY}"].join('?')
    rescue
      {}    
    end
    
  end
end
