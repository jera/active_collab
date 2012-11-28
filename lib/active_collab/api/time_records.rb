module ActiveCollab::API::TimeRecords

	def create_time_record(args = {})
		url = "#{@api_url}?auth_api_token=#{@api_key}&path_info=projects/#{args[:project_id]}/tasks/#{args[:task_id]}/tracking/time/add"
		body = "submitted=submitted&time_record[user_id]=#{args[:user_id]}&time_record[value]=#{args[:time]}&time_record[record_date]=#{args[:record_date]}&time_record[job_type_id]=1"
		response = HTTParty.post(url, :body => body)
		ActiveCollab::TimeRecord.from_hash(response)
	end

end