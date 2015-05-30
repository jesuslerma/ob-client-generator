module Ob
	class PobVistaFacturasPortal
		include Ob::Operations::Find
		include Ob::Operations::Where
		
		def self.url()
			"/#{CGI.escape('POB_VistaFacturasPortal')}"
		end
		def url
			return [self.class.url, id].join('/')
		end
	end	
end
#Ob.api_base
#=> "http://ec2-54-237-28-95.compute-1.amazonaws.com/openbravo/org.openbravo.service.json.jsonrest/"
#irb(main):005:0> Ob.user="csalinas-tegik"
#=> "csalinas-tegik"
#irb(main):006:0> Ob.password="KopoTegik"
#Ob::Product.where("_where"=>"name='SUSCRIPCION ANUAL ALFRESCO'")