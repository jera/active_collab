require 'active_collab/project'
module ActiveCollab
	module API
		module Projects

			def projects
				url = "#{@api_url}?path_info=/projects&auth_api_token=#{@api_key}"
				response = HTTParty.get(url)
				response_projects = response["projects"].first[1]
				projects = response_projects.collect do |p|
					ActiveCollab::Project.from_hash(p)
				end
				projects
			end

		end
	end
end
