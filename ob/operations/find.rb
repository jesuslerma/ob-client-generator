module Ob
	module Operations
		module Find
			module ClassMethods
				def find(id) 
					instance = self.new(id)
					response = Requestor.new.request(:get, url)
					response
				end
			end
			def self.included(base)
				base.extend(ClassMethods)
			end
		end
	end
end