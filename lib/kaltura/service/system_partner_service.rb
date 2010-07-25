module Kaltura
  module Service
    class SystemPartnerService < BaseService

  		def get(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','get',kparams,false)
  		end

  		def get_usage(partner_filter=nil, usage_filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'partnerFilter', partner_filter)
  			client.add_param(kparams, 'usageFilter', usage_filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemPartner','getUsage',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemPartner','list',kparams,false)
  		end

  		def update_status(partner_id, status)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'status', status)
  			perform_request('systemPartner','updateStatus',kparams,false)
  		end

  		def get_admin_session(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','getAdminSession',kparams,false)
  		end

  		def update_configuration(partner_id, configuration)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'configuration', configuration)
  			perform_request('systemPartner','updateConfiguration',kparams,false)
  		end

  		def get_configuration(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','getConfiguration',kparams,false)
  		end

  		def get_packages()
  			kparams = {}
  			perform_request('systemPartner','getPackages',kparams,false)
  		end
  	end #class SystemPartnerService
	end
end