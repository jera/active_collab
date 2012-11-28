require 'active_collab/user'

module ActiveCollab
	module API
		module Users

		  def self.user_info
		    url = "#{@api_url}?auth_api_token=#{@api_key}&path_info=info"
		    response = HTTParty.get(url)
		    response_user = response["info"]
		    user = ActiveCollab::User.from_info(response_user)    
		    user
		  end
		end
	end

end