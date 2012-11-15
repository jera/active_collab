class AcApi::User

  attr_accessor :id, :name, :permalink, :state, :first_name, :last_name, :display_name, :short_display_name, :email

  def initialize(api_url, token)
    @api_url = api_url
    @token = token
  end

  def self.user_info(api_url, token)
    url = "#{api_url}?auth_api_token=#{token}&path_info=info"
    response = HTTParty.get(url)
    response_user = response["info"]
    user = AcApi::User.from_info(response_user, api_url, token)
    end
    user
  end

  private
  def self.from_info(hash, api_url, token)
    user = AcApi::User.new(api_url, token)
    user.id = hash["logged_user"]["id"].to_i
    user.name = hash["logged_user"]["name"]
    user.permalink = hash["logged_user"]["permalink"]
    user.state = hash["logged_user"]["state"].to_i
    user.first_name = hash["logged_user"]["first_name"]
    user.last_name = hash["logged_user"]["last_name"]
    user.display_name = hash["logged_user"]["display_name"]
    user.short_display_name = hash["logged_user"]["short_display_name"]
    user.email = hash["logged_user"]["email"]
    user
  end
end