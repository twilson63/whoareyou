module Whoru
  module Friends
    def friends
      #puts [Whoru::FRIENDS,"#{@screen_name}.json"].join('/')
      get [Whoru::FRIENDS,"#{@screen_name}.json"].join('/')

    rescue
      []      
    end
  end
end
