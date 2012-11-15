class AcApi::TimeRecord

	attr_accessor :id, :permalink, :urls, :permissions, 
		:created_on, :created_by, :parent_class, :parent_id, :state, 
		:project_id, :billable_status, :value, :record_date, :summary, :user_id, :job_type_id

	private
	def self.from_hash(hash)
		task = AcApi::TimeRecord.new
		id = hash["id"].to_i
		permalink = hash["permalink"]
		urls = hash["urls"]
		permissions = hash["permissions"]
		created_on = hash["created_on"]
		created_by = hash["created_by"]
		parent_class = hash["parent_class"]
		parent_id = hash["parent_id"].to_i
		state = hash["state"].to_i
		project_id = hash["project"]["id"].to_i
		billable_status = hash["billable_status"].to_i
		value = hash["value"].to_f
		record_date = hash["record_date"]
		summary = hash["summary"]
		user_id = hash["user"]["id"]
		job_type_id = hash["job_type"]["id"]
	end
end