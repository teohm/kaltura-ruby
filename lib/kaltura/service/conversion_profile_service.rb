module Kaltura
  module Service
    class ConversionProfileService < BaseService

  		def add(conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','get',kparams,false)
  		end

  		def update(id, conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('conversionProfile','list',kparams,false)
  		end 
  	end #class ConversionProfileService
	end
end