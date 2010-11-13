module Whoareyou
  module Friends
    def friends
      #puts [Whoru::FRIENDS,"#{@screen_name}.json"].join('/')
      get [Whoareyou::FRIENDS,"#{@screen_name}.json"].join('/')

    rescue
      []      
    end
  end
end
