class AcApi::TimeRecord

	attr_accessor :id, :permalink, :urls, :permissions, 
		:created_on, :created_by, :parent_class, :parent_id, :state, 
		:project_id, :billable_status, :value, :record_date, :summary, :user_id, :job_type_id

	private
	def self.from_hash(hash)
		time_record = AcApi::TimeRecord.new
		time_record.id = hash["id"].to_i
		time_record.permalink = hash["permalink"]
		time_record.urls = hash["urls"]
		time_record.permissions = hash["permissions"]
		time_record.created_on = hash["created_on"]
		time_record.created_by = hash["created_by"]
		time_record.parent_class = hash["parent_class"]
		time_record.parent_id = hash["parent_id"].to_i
		time_record.state = hash["state"].to_i
		time_record.project_id = hash["project"]["id"].to_i
		time_record.billable_status = hash["billable_status"].to_i
		time_record.value = hash["value"].to_f
		time_record.record_date = hash["record_date"]
		time_record.summary = hash["summary"]
		time_record.user_id = hash["user"]["id"]
		time_record.job_type_id = hash["job_type"]["id"]
	end
end