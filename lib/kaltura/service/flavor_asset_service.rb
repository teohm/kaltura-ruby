module Kaltura
  module Service
    
    ##
    # The Flavor Asset Service allows you to retrieve information and invoke actions on flavor assets.
    #
    # @example Add a new flavor to a media entry:
    #   client.flavor_asset_service.convert('1_qa32a3ax',22)
    #
    # @example Retrieve a flavor by flavor_id:
    #   client.flavor_asset_service.get('0_as35a2r3a')
    #
    # @example Retrieve all flavors for a media entry:
    #   client.flavor_asset_service.get_by_entry_id('1_qa32a3ax')
    #      
    # @example Retrieve all the web playable flavors for a media entry:
    #   client.flavor_asset_service.get_web_playable_by_entry_id('1_qa32a3ax')
    #
    # @example Reconvert a specific Flavor:
    #   client.flavor_asset_service.get('0_as35a2r3a')
    #
    # @example Delete a Flavor:
    #   client.flavor_asset_service.delete('0_as35a2r3a')
    #
    # @example Retrieve a URL to download a specific flavor:
    #   client.flavor_asset_service.get_download_url('0_as35a2r3a')
    #
    ##
    class FlavorAssetService < BaseService

      ##
      # Retrieves an individual flavor asset by ID.
      #
      # @param [String] id A flavor asset ID closely resembles an entry_id as Kaltura flavors are 
      #   very close in nature to entries.
      #
      # @return [Kaltura::FlavorAsset] Returns the requested flavor asset.
      #
      # @raise [Kaltura::APIError] Raises the default Kaltura errors.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','get',kparams,false)
  		end

      ##
      # Retrieves an enumerable collection of flavor assets given a media entry id.
      #
      # @param [String] entry_id The media entry ID to seek flavors for.
      #
      # @return [Array] Returns an array of the flavor assets for a given media entry.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getByEntryId',kparams,false)
  		end
  		
      ##
      # Retrieves an enumerable collection of flavor assets that are playable within the KDP for a given media entry ID.
      #
      # @param [String] entry_id The media entry ID to seek flavors for.
      #
      # @return [Array] Returns an array of the flavor assets for a given media entry.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.      
      ##
  		def get_web_playable_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getWebPlayableByEntryId',kparams,false)
  		end

      ##
      # Add and convert a new flavor asset for a specified entry given a flavor param.
      #
      # @param [String] entry_id The media entry ID to add a new flavor asset to.
      # @param [Integer] flavor_params_id The flavor params ID for conversion type.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def convert(entry_id, flavor_params_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id)
  			perform_request('flavorAsset','convert',kparams,false)
  		end

      ##
      # Reconvert a specific flavor asset.
      #
      # @param [String] id The flavor asset id.
      # 
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def reconvert(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','reconvert',kparams,false)
  		end

      ##
      # Removes a flavor asset.
      #
      # @param [String] id Flavor asset to remove.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','delete',kparams,false)
  		end

      ##
      # Gets a downloadable URL for a flavor asset.
      #
      # @param [String] id The flavor asset id.
      #
      # @return [String] a URL that can be used to download the requested flavor.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get_download_url(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','getDownloadUrl',kparams,false)
  		end
  		
      ##
      # Retrieves an enumerable collection of Flavor Assets + Flavor Params given a media entry.
      #
      # @param [String] entry_id The media entry to retrieve flavors from.
      #
      # @return [Array] Returns a collection of Flavor Assets + Flavor Params.
      # 
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get_flavor_assets_with_params(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getFlavorAssetsWithParams',kparams,false)
  		end
  	end #class FlavorAssetService
	end
end