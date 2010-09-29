module Kaltura
  module Service
    
    ##
    # The Flavor Params service is responsible for adding and managing flavor params
    ##
    class FlavorParamsService < BaseService

      ##
      # Adds a new Flavor param.
      #
      # @param [Kaltura::FlavorParams] flavor_params The flavor params object to add to Kaltura.
      #
      # @return [Kaltura::FlavorParams] Returns the flavor params object as stored in the Kaltura system.
      #   Would be helpful to store the ID for later use.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors
      ##
  		def add(flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','add',kparams,false)
  		end

      ##
      # Retrieves a flavor param.
      #
      # @param [Integer] id The flavor param ID.
      #
      # @return [Kaltura::FlavorParams] The requested flavor params.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','get',kparams,false)
  		end

      ##
      # Updates an existing flavor params object.
      # As with other Kaltura API update actions, it is best to instantiate a new flavor params
      # object instead of retrieving the existing one.  You only add fields for the fields you wish to
      # change.
      #
      # @param [Integer] id The flavor param ID.
      # @param [Kaltura::FlavorParams] A newly instantiated flavor params object that contains the fields 
      #   you wish to change on the existing flavor params object.
      #
      # @return [Kaltura::FlavorParams] The newly updated flavor param object.  The version will have been bumped.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors.
      #
      ##
  		def update(id, flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','update',kparams,false)
  		end

      ##
      # Deletes the requested flavor param.
      # 
      # @param [Integer] id The flavor param id.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','delete',kparams,false)
  		end

      ##
      # Lists flavor params by filter with paging support.
      # In addition, all system default parameters will be listed as well.
      #
      # @param [Kaltura::Filter::FlavorParamsFilter] filter The filter to apply.
      # @param [Kaltura::FilterPager] The default Kaltura pager.
      #
      # @return [Kaltura::Response::FlavorParamsListResponse] Wrapper for Kaltura::Response::BaseResponse.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('flavorParams','list',kparams,false)
  		end

      ##
      # Retrieves all flavor params from a specific Conversion Profile.
      #
      # @param [Integer] conversion_profile_id The conversion profile ID.
      #
      # @return [Array] Returns an array of Flavor Params with a specific conversion profile.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors      
      ##
  		def get_by_conversion_profile_id(conversion_profile_id)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			perform_request('flavorParams','getByConversionProfileId',kparams,false)
  		end
  	end #class FlavorParamsService
	end
end