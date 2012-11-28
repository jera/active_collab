require 'httparty'
require "active_collab/version"
require 'active_collab/api/projects'
require 'active_collab/api/tasks'
require 'active_collab/api/time_records'
require 'active_collab/api/users'

module ActiveCollab
  class Client

  	include ActiveCollab::API::Projects
    include ActiveCollab::API::Tasks
    include ActiveCollab::API::TimeRecords
    include ActiveCollab::API::Users

  	def initialize(url, api_key)
  		@api_url = url
  		@api_key = api_key
  	end

  end
end
