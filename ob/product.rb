module Ob
	class Product < Resource
	def self.hola
		puts "hola"
	end
	include Ob::Operations::Find
	include Ob::Operations::Where
	include Ob::Operations::Exec
	#include RubyOb::Operationsa::Create
	#include RubyOb::Operations::Delete
	#include RubyOb::Operations::Update
	#include RubyOb::Operations::CustumAction
	#include RubyOb::Operations::CreateMember
	
	end
end