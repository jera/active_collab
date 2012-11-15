class AcApi::User

  def self.user_info(api_url, token)
    url = "#{api_url}?auth_api_token=#{token}&path_info=info"
    response = HTTParty.get(url)
    response["info"].first[1]
  end
end