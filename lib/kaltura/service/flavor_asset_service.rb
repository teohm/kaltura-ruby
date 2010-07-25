module Kaltura
  module Service
    class FlavorAssetService < BaseService

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','get',kparams,false)
  		end

  		def get_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getByEntryId',kparams,false)
  		end

  		def get_web_playable_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getWebPlayableByEntryId',kparams,false)
  		end

  		def convert(entry_id, flavor_params_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id)
  			perform_request('flavorAsset','convert',kparams,false)
  		end

  		def reconvert(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','reconvert',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','delete',kparams,false)
  		end

  		def get_download_url(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','getDownloadUrl',kparams,false)
  		end

  		def get_flavor_assets_with_params(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getFlavorAssetsWithParams',kparams,false)
  		end
  	end #class FlavorAssetService
	end
end