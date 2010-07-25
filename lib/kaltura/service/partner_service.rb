module Kaltura
  module Service
    class PartnerService < BaseService

  		def register(partner, cms_password='')
  			kparams = {}
  			client.add_param(kparams, 'partner', partner)
  			client.add_param(kparams, 'cmsPassword', cms_password)
  			perform_request('partner','register',kparams,false)
  		end

  		def update(partner, allow_empty=false)
  			kparams = {}
  			client.add_param(kparams, 'partner', partner)
  			client.add_param(kparams, 'allowEmpty', allow_empty)
  			perform_request('partner','update',kparams,false)
  		end

  		def get_secrets(partner_id, admin_email, cms_password)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'adminEmail', admin_email)
  			client.add_param(kparams, 'cmsPassword', cms_password)
  			perform_request('partner','getSecrets',kparams,false)
  		end

  		def get_info()
  			kparams = {}
  			perform_request('partner','getInfo',kparams,false)
  		end

  		def get_usage(year='', month=1, resolution='days')
  			kparams = {}
  			client.add_param(kparams, 'year', year)
  			client.add_param(kparams, 'month', month)
  			client.add_param(kparams, 'resolution', resolution)
  			perform_request('partner','getUsage',kparams,false)
  		end
  	end #class PartnerService
	end
end