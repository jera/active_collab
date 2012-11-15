class AcApi::Project

	#http://atendimento.jera.com.br/public/api.php?path_info=/projects&auth_api_token=8-GSgGuwkP4sollrIlvvt3ZIGqfX2RZ9mHeT2A5Gtl
	def self.list(api_url, token)
		url = "#{api_url}?path_info=/projects&auth_api_token=#{token}"
		response = HTTParty.get(url)
		puts response.body
	end

end
