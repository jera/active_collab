class ActiveCollab::Project
	attr_accessor :id, :name, :permalink, :state, :is_completed,
								:category_id, :label_id, :company_id, :is_member


	def from_hash(hash)
		project = ActiveCollab::Project.new
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