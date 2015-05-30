require 'cgi'
require 'faraday'

require "./ob/version"

require "./ob/operations/find"
require "./ob/operations/where"
require "./ob/operations/exec"

require "./ob/ob_object"
require "./ob/resource"
#require "./ob/clients/*.rb"
require "./ob/requestor"

Dir['./ob/clients/*.rb'].each do |file| 
	puts "importing #{file}" 
	require file 
end

module Ob
  def self.api_base
  	@api_base
  end
  def self.api_base=(api_base)
  	@api_base = api_base
  end
  def self.api_version
 		@api_version
 	end
 	def self.api_version=(api_version)
 		@api_version = @api_version
 	end
 	def self.user
 		@user 
 	end
 	def self.user=(user)
 		@user = user
 	end
 	def self.password
 		@password
 	end
 	def self.password=(password)
 		@password = password
 	end
end