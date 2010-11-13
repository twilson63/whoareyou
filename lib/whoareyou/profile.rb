module Whoareyou
  module Profile
    def profile(user_id)
      get [Whoru::PROFILE,"#{user_id}.json"].join('/')
    rescue
      {}      
    end
  end
end
