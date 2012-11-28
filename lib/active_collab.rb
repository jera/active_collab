require 'httparty'
require "active_collab/version"
require 'active_collab/project'
require 'active_collab/task'
require 'active_collab/time_record'
require 'active_collab/user'

module ActiveCollab
  class Client

  	include ActiveCollab::API::Projects
    include ActiveCollab::API::Tasks
    include ActiveCollab::API::TimeRecords
    include ActiveCollab::API::Users

  	def initialize(url, api_key)
  		@url = url
  		@api_key = api_key
  	end

  end
end
