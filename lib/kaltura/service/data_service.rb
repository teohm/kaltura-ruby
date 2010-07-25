module Kaltura
  module Service
    class DataService < BaseService

  		def add(data_entry)
  			kparams = {}
  			client.add_param(kparams, 'dataEntry', data_entry)
  			perform_request('data','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('data','get',kparams,false)
  		end

  		def update(entry_id, document_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'documentEntry', document_entry)
  			perform_request('data','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('data','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('data','list',kparams,false)
  		end
  	end #class DataService
	end
end