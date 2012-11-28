module ActiveCollab::API::Tasks

	def tasks(project_id)
		url = "#{@api_url}?path_info=/projects/#{project_id}/tasks&auth_api_token=#{@api_key}"
		response = HTTParty.get(url)
		response_tasks = response["tasks"].first[1]
		if response_tasks.kind_of?(Hash)
			tasks = [ActiveCollab::Task.from_hash(response_tasks]
		else
			tasks = response_tasks.collect do |t|
				ActiveCollab::Task.from_hash(t)
			end
		end
		tasks
	end

	
end

 