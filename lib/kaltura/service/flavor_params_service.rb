module Kaltura
  module Service
    class FlavorParamsService < BaseService

  		def add(flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','get',kparams,false)
  		end

  		def update(id, flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('flavorParams','list',kparams,false)
  		end

  		def get_by_conversion_profile_id(conversion_profile_id)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			perform_request('flavorParams','getByConversionProfileId',kparams,false)
  		end
  	end #class FlavorParamsService
	end
end