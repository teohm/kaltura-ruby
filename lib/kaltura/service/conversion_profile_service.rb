module Kaltura
  module Service
    
    ##
    # The Conversion Profile Service is responsible for adding and managing conversion profiles.
    #
    # @example Create a new conversion profile:
    #   conversion_profile = Kaltura::ConversionProfile.new
    #   conversion_profile.name = "waffles"
    #   conversion_profile.is_default = "true"
    #   conversion_profile.clip_duration = 15
    #   client.conversion_profile_service.add(conversion_profile)
    #
    # @example Retrieve a conversion profile:
    #   client.conversion_profile_service.get(224)
    #
    # @example Update a conversion profile:
    #   update_profile = Kaltura::ConversionProfile.new
    #   update_profile.description = "why does the documentor love waffles so much?"
    #   update_profile.clip_start = 3
    #   client.conversion_profile_service.update(224,update_profile)
    #
    # @example Delete a conversion profile:
    #   client.conversion_profile_service.delete(224)
    #
    # @example Retrieve all conversion profiles with an ID of 224
    #   filter = Kaltura::Filter::ConversionProfileFilter.new
    #   filter.id_equal = 224
    #   client.conversion_profile_service.list(filter)
    ##
    class ConversionProfileService < BaseService

      ##
      # Adds a new conversion profile.
      #
      # @param [Kaltura::ConversionProfile] conversion_profile The new conversion profile.
      #
      # @return [Kaltura::ConversionProfile] The conversion profile as it is stored on the Kaltura server.
      #   It might be important to store the ID returned.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def add(conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','add',kparams,false)
  		end
      
      ##
      # Retrieves a conversion profile by ID.
      #
      # @param [Integer] id The conversion profile ID.
      #
      # @return [Kaltura::ConversionProfile] The requested conversion profile.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##      
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','get',kparams,false)
  		end

      ##
      # Updates a conversion profile given an ID and a newly instantiated ConversionProfile.
      # It will update any populated fields on the provided profile.
      #
      # @param [Integer] id The conversion profile ID.
      # @param [Kaltura::ConversionProfile] conversion_profile Newly instantiated conversion profile with 
      #   the fields to update.
      # 
      # @return [Kaltura::ConversionProfile] Returns an updated conversion profile.
      # 
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def update(id, conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','update',kparams,false)
  		end

      ##
      # Deletes a conversion profile by ID.
      #
      # @param [Integer] id The conversion profile ID.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','delete',kparams,false)
  		end

      ##
      # Lists conversion profiles given a filter with paging support for larger result sets.
      #
      # @param [Kaltura::Filter::ConversionProfileFilter] filter The filter to apply to the list.
      # @param [Kaltura::FilterPager] pager Default Kaltura Pager.
      #
      # @return [Kaltura::Response::ConversionProfileListResponse] Wrapper for Kaltura::Response::BaseResponse.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('conversionProfile','list',kparams,false)
  		end 
  	end #class ConversionProfileService
	end
end