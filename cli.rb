require 'thor'

class ObCli < Thor
	include Thor::Actions
	desc "rest_client SERVICE_NAME", "SERVICE_NAME is the name of the service"
	long_desc <<-LONGDESC
		`cli rest_client` will generate a rest client class of the service
		that you indicates.

		You can optionally indicates a second parameter, which will name
		the rb file generated.
	LONGDESC
	option :file_name
	option :class_name
	def rest_client(service_name)
		file_name = service_name
		file_name = options[:file_name] if options[:file_name]
		class_name = options[:class_name] if options[:class_name]
		create_file "ob/clients/#{file_name}.rb" do
			<<-CLASSBLOCK
module Ob
	class #{class_name} < Resource
		include Ob::Operations::Find
		include Ob::Operations::Where
		include Ob::Operations::Exec
	end
end
			CLASSBLOCK
		end
	end
end

ObCli.start(ARGV)