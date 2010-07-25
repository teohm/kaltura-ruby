module Kaltura
  module Service
    class BulkUploadService < BaseService

  		def add(conversion_profile_id, csv_file_data)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			client.add_param(kparams, 'csvFileData', csv_file_data)
  			perform_request('bulkUpload','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('bulkUpload','get',kparams,false)
  		end

  		def list(pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'pager', pager)
  			perform_request('bulkUpload','list',kparams,false)
  		end
  	end #class BulkUploadService
	end
end