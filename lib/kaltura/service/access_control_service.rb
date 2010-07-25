module Kaltura
  module Service
    class AccessControlService < BaseService

  		def add(access_control)
  			kparams = {}
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','get',kparams,false)
  		end

  		def update(id, access_control)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('accessControl','list',kparams,false)
  		end
  	end #class AccessControlService
  end
end