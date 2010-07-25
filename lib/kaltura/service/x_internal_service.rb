module Kaltura
  module Service
    class XInternalService < BaseService

  		def x_add_bulk_download(entry_ids, flavor_params_id='')
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids)
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id)
  			perform_request('xInternal','xAddBulkDownload',kparams,false)
  		end
  	end #class XInternalService
  end
end