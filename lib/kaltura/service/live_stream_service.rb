module Kaltura
  module Service
    
    ##
    # The live stream service lets you manage live stream channels.
    ##
    class LiveStreamService < BaseService
      
      ##
      # Adds a new live stream entry.
      # The entry will be queued for provision.  Note, this uses a LiveStreamAdminEntry instead of a 
      # normal LiveStreamEntry object.  LiveStreamAdminEntry is a child class, and adds a few fields
      # pertinent to administering a Live stream.
      #
      # @param [Kaltura::LiveStreamAdminEntry] live_stream_entry The live stream entry metadata.
      #   In order to succesfully create a live stream entry you need to have the media_type,
      #   encoding_ip1, and encoding_ip2 fields populated.
      #
      # @return [Kaltura::LiveStreamAdminEntry] Returns the live stream entry saved on the database.
      #   It might be a good idea to save the ID field on return.
      #
      # @raise [Kaltura::APIError] Raises 'PROPERTY_VALIDATION_CANNOT_BE_NULL' if media_type, encoding_ip1, 
      #   or encoding_ip2 are null.
      #
      ##
  		def add(live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','add',kparams,false)
  		end

      ##
      # Retrieves a live stream entry by ID.
      # The Kaltura API docs indicate that this action will return a LiveStreamEntry object, 
      # but the reality is that it will return a LiveStreamAdminEntry object instead.
      #
      # @param [String] entry_id The live stream entry ID.
      # @param [Integer] version The version of the entry.
      #
      # @return [Kaltura::LiveStreamAdminEntry] The requested live stream object.
      #
      # @raise [Kaltura::APIError] Raises 'ENTRY_ID_NOT_FOUND' if the entry doesn't exist.
      ##
  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('liveStream','get',kparams,false)
  		end
      
      ##
      # Updates a live stream entry object.  
      # Like all of the other Kaltura API update actions it is best to instantiate a new LiveStreamAdminEntry object
      # instead of pulling the existing one and updating its fields.
      #
      # @param [String] entry_id The live stream entry ID.
      # @param [Kaltura::LiveStreamEntry] live_stream_entry A LiveStreamEntry object with the fields you wish to update populated.
      #
      # @return [Kaltura::LiveStreamEntry] Returns the entry_id with the updated fields.  It will also bump the version.
      #
      # @raise [Kaltura::APIError] Raises 'ENTRY_ID_NOT_FOUND' if the entry doesn't exist.
      #
      ##
  		def update(entry_id, live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','update',kparams,false)
  		end

      ##
      # Deletes a live stream entry object.
      #
      # @param [String] entry_id The live stream entry ID.
      #
      # @return [nil] Returns nothing
      #
      # @raise [Kaltura::APIError] Raises 'ENTRY_ID_NOT_FOUND' if the entry doesn't exist.
      ##
  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('liveStream','delete',kparams,false)
  		end
  		
      ##
      # Lists live streams by the filter with paging support for large sets of live streams.
      #
      # @param [Kaltura::Filter::LiveStreamEntryFilter] The live stream filter is a wrapper for Kaltura::Filter::MediaEntryFilter
      # @param [Kaltura::FilterPager] The default Kaltura pager.
      #
      # @return [Kaltura::Response::LiveStreamListResponse] This is a wrapper for Kaltura::Response::BaseRespsone.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura API errors.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('liveStream','list',kparams,false)
  		end
  		
  		##
  		# Updates the live stream entries offline thumbnail using a raw jpgeg file.
  		#
  		# @param [String] entry_id The live stream entry ID.
  		# @param [File] file_data The JPEG file to use as the stream is offline backdrop.
  		#
  		# @return [Kaltura::LiveStreamEntry] The live stream entry with the updated thumbnail and version.
  		#
  		# @raise [Kaltura::APIError] Raises default Kaltura errors plus 'ENTRY_ID_NOT_FOUND' if the entry doesn't exist and
  	  #   'PERMISSION_DENIED_TO_UPDATE_ENTRY' if the user is does not own the live stream and isn't an administrator.
  		##
  		def update_offline_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('liveStream','updateOfflineThumbnailJpeg',kparams,false)
  		end

  		##
  		# Updates the live stream entries offline thumbnail using a URL.
  		#
  		# @param [String] entry_id The live stream entry ID.
  		# @param [File] url The URL to a JPEG file to use as the stream is offline backdrop.
  		#
  		# @return [Kaltura::LiveStreamEntry] The live stream entry with the updated thumbnail and version.
  		#
  		# @raise [Kaltura::APIError] Raises default Kaltura errors plus 'ENTRY_ID_NOT_FOUND' if the entry doesn't exist and
  	  #   'PERMISSION_DENIED_TO_UPDATE_ENTRY' if the user is does not own the live stream and isn't an administrator.
  		##
  		def update_offline_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('liveStream','updateOfflineThumbnailFromUrl',kparams,false)
  		end
  	end #class LiveStreamService
	end
end