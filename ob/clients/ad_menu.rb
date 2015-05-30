module Ob
	class ADMenu < Resource
		include Ob::Operations::Find
		include Ob::Operations::Where
		include Ob::Operations::Exec
	end
end