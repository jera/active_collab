module ActiveCollab::API::User

  attr_accessor :id, :name, :permalink, :state, :first_name, :last_name, :display_name, :short_display_name, :email

  def self.user_info
    url = "#{@api_url}?auth_api_token=#{@api_key}&path_info=info"
    response = HTTParty.get(url)
    response_user = response["info"]
    user = ActiveCollab::User.from_info(response_user)    
    user
  end

end