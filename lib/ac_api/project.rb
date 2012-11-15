class AcApi::Project

	attr_accessor :id, :name, :permalink, :state, :is_completed, :category_id, :label_id, :company_id, :is_member

	def initialize(api_url, token)
		@api_url = api_url
		@token = token
	end

	def self.list(api_url, token)
		url = "#{api_url}?path_info=/projects&auth_api_token=#{token}"
		response = HTTParty.get(url)
		response_projects = response["projects"].first[1]
		projects = response_projects.collect do |p|
			AcApi::Project.from_hash(p, api_url, token)
		end
		projects
	end

	def tasks
		url = "#{@api_url}?path_info=/projects/#{self.id}/tasks&auth_api_token=#{@token}"
		response = HTTParty.get(url)
		response_tasks = response["tasks"].first[1]
		tasks = response_tasks.collect do |t|
			AcApi::Task.from_hash(t,@api_url, @token)
		end
		tasks
	end

	private
	def self.from_hash(hash, api_url, token)
		project = AcApi::Project.new(api_url, token)
		project.id = hash["id"].to_i
		project.name = hash["name"]
		project.permalink = hash["permalink"]
		project.state = hash["state"].to_i
		project.is_completed = hash["is_completed"].to_i
		project.category_id = hash["category_id"].to_i
		project.label_id = hash["label_id"].to_i
		project.company_id = hash["company_.to_iid"].to_i
		project.is_member = hash["is_member"].to_i
		project
	end

end
