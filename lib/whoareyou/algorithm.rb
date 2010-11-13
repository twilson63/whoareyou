module Whoareyou
  # Step 1 : Get Friends
  # Step 2 : Rank Friends
  # Step 3 : Pick top 15
  # Step 4 : Profile top 15
  # Step 5 : Categorize each Profile

  
  class Algorithm
    include Whoareyou::Api
    include Whoareyou::Friends
    include Whoareyou::Rank
    include Whoareyou::Profile
    include Whoareyou::Category
    
    TOP_15 = 0..15
    
    attr_accessor :screen_name
    
    def initialize(screen_name)
      @screen_name = screen_name
    end
    
    def categories
      results = []
      rank(friends)[TOP_15].each do |friend|
        description = profile(friend['user_id'])['description']
        result = category(description)
        results << result unless result.nil? 
      end
      results.sort
    end
    
  end
  
end
