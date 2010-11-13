module Whoareyou
  module Profile
    def profile(user_id)
      get [Whoareyou::PROFILE,"#{user_id}.json"].join('/')
    rescue
      {}      
    end
  end
end
