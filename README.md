# ob-client-generator
Shell script for automatic openbravo rest clients for ruby.

Usage:

ruby cli.rb rest_client ADMenu --file_name=ad_menu.rb --class_name=AdMenu

Where:

ruby cli.rb rest_client [OB_SERVICE_NAME] --file_name=[FILE_NAME] --class_name=AdMenu

This should generates the file ad_menu.rb on ob/clients/ad_menu.rb with content:

module Ob
        class AdMenu < Resource
                include Ob::Operations::Find
                include Ob::Operations::Where
                include Ob::Operations::Exec
        end
end
