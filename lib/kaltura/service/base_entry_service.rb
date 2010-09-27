module Kaltura
  module Service
    ##
    # BaseEntryService is a service for generic entries.  If you do not know what type of media you are working with,
    # this is a good service to use.  You need to know what media type you are working with for MediaService.
    #
    # @example Retrieve a base entry:
    #   client.base_entry_service.get('1_qua324a')
    #
    # @example Upload a new entry:
    #   upload_file = File.open("/path/to/media_file")
    #   upload_token = client.base_entry_service.upload(upload_file)
    #   base_entry = Kaltura::BaseEntry.new
    #   base_entry.name = "WAFFLES ARE MY FRIEND"
    #   client.base_entry_service.add_from_uploaded_file(base_entry,upload_token)
    #
    # @example Update an existing entry:
    #   update_entry = Kaltura::BaseEntry.new
    #   update_entry.description = "Pancakes are lame yo."
    #   client.base_entry_service.update('1_qua324a',update_entry)
    #
    # @example Delete an existing entry:
    #   client.base_entry_service.delete('1_qua324a')
    #
    # @example Update an Entry thumbnail via file upload:
    #   thumbnail_file = File.open('/path/to/thumbnail_file')
    #   client.base_entry_service.update_thumbnail_from_jpeg('1_qua324a',thumbnail_file)
    #   
    # @example Update an entry thumbnail from a url:
    #   client.base_entry_service.update_thumbnail_from_url('1_qua324a','http://twitter.com/waffles/waffletastic.jpg')
    #
    # @example Update an entry thumbnail from another entry:
    #   client.base_entry_service.update_thumbnail_from_source_entry('1_qua324a','0_k24aj1b',5)
    ##
    class BaseEntryService < BaseService
      
      ##
      # Generic add entry using an uploaded file, should be used when the uploaded entry type is not known.
      #
      # @param [Kaltura::BaseEntry] entry A newly instantiated BaseEntry object filled in with appropriate fields.
      # @param [String] upload_token_id The upload token from the upload() method.
      # @param [Kaltura::Constants::Entry::Type] type The type of entry.  This should be defaulted.  Otherwise use the MediaService.
      #
      # @return [Kaltura::BaseEntry] Returns a Kaltura Entry.  This is helpful to retrieve the entry_id.
      #
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def add_from_uploaded_file(entry, upload_token_id, type=-1)
  			kparams = {}
  			client.add_param(kparams, 'entry', entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			client.add_param(kparams, 'type', type)
  			perform_request('baseEntry','addFromUploadedFile',kparams,false)
  		end

      ##
      # Gets a base entry by ID.
      #
      # @param [String] entry_id Kaltura entry.
      # @param [Integer] version Version of the entry.
      #
      # @return [Kaltura::BaseEntry] The requested Entry.
      #
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('baseEntry','get',kparams,false)
  		end
      
      ##
      # Updates a base entry.  It is best to instantiate a new base entry for the second parameter and initilize
      # those fields for the changes you want to change instead of using an existing entry object.
      #
      # @param [String] entry_id The Kaltura entry to be updated.
      # @param [Kaltura::BaseEntry] base_entry A BaseEntry object with fields populated that you wish to change.
      #
      # @return [Kaltura::BaseEntry] Returns the Entry defined by entry_id with the updated fields.
      #
      # @raise [Kaltura::APIError] raises "ENTRY_ID_NOT_FOUND" if the entry_id isn't found in addition to default errors.
      ##
  		def update(entry_id, base_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'baseEntry', base_entry)
  			perform_request('baseEntry','update',kparams,false)
  		end
      
      ##
      # Retrieves an array of BaseEntries when provided a comma seperated list of entry_id's.
      #
      # @param [String] entry_ids A comma delimited list of Kaltura entry_id's.
      #
      # @return [Array] Returns an array of Entries, based upon their format.
      # 
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def get_by_ids(entry_ids)
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids)
  			perform_request('baseEntry','getByIds',kparams,false)
  		end

      ##
      # Deletes the specified Kaltura Entry.
      #
      # @param [String] entry_id The Kaltura entry to be deleted.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','delete',kparams,false)
  		end
      
      ##
      # Lists base entries by the filter with paging support.
      #
      # @param [Kaltura::Filter::BaseEntryFilter] filter
      # @param [Kaltura::FilterPager] pager
      #
      # @return [Kaltura::Response::BaseEntryListResponse] wrapper for Kaltura::Response::BaseResponse.
      # 
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','list',kparams,false)
  		end
      
      ##
      # Returns a count based on a specified base entry filter.
      #
      # @param [Kaltura::Filter::BaseEntryFilter] filter
      # 
      # @return [Integer] Number of base entries within the filter.
      # 
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('baseEntry','count',kparams,false)
  		end

      ##
      # Uploads a file to the Kaltura server and returns a token to be used to create a Kaltura entry.
      #
      # @param [File] file_data The file to upload to Kaltura.
      #
      # @return [String] The file upload_token_id to be used by entry adding methods.
      # 
      # @raise [Kaltura::APIError] Default Kaltura errors.
      ##
  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','upload',kparams,false)
  		end

      ##
      # Updates an entries thumbnail using a raw jpeg file.
      #
      # @param [String] entry_id The Kaltura entry.
      # @param [File] file_data The MIME type of 'image/jpg' file to be used as the entries thumbnail.
      #   This will update the entries version and the thumbnail's version.
      #
      # @return [Kaltura::BaseEntry] The updated Kaltura entry.  The primary change will be a version bump.
      # 
      # @raise [Kaltura::APIError] Will raise 'PERMISSION_DENIED_TO_UPDATE_ENTRY' 
      #   if the user session doesn't have permissions to edit this particular entry.
      ##
  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','updateThumbnailJpeg',kparams,false)
  		end
      ##
      # Updates an entries thumbnail using a valid URL.
      #
      # @param [String] entry_id The Kaltura entry.
      # @param [File] url The URL to pull the thumbnail from.
      #   This will update the entries version and the thumbnail's version.
      #
      # @return [Kaltura::BaseEntry] The updated Kaltura entry.  The primary change will be a version bump.
      # 
      # @raise [Kaltura::APIError] Will raise 'PERMISSION_DENIED_TO_UPDATE_ENTRY' 
      #   if the user session doesn't have permissions to edit this particular entry.
      ##
  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('baseEntry','updateThumbnailFromUrl',kparams,false)
  		end
      
      ##
      # Updates the entries thumbnail from another entry given a specified time offset.
      # This is one truly odd API call.
      #
      # @param [String] entry_id The Kaltura entry to be changed.
      # @param [String] source_entry_id The Kaltura entry providing the change.
      # @param [Integer] time_offset The time in seconds to offset the source_entry_id thumbnail by.
      # 
      # @return [Kaltura::BaseEntry] The updated Kaltura entry.  The primary change will be a version bump.
      # 
      # @raise [Kaltura::APIError] Will raise 'PERMISSION_DENIED_TO_UPDATE_ENTRY' 
      #   if the user session doesn't have permissions to edit this particular entry.
      ##
  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'sourceEntryId', source_entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('baseEntry','updateThumbnailFromSourceEntry',kparams,false)
  		end

      ##
      # Flags an inappropriate Kaltura entry for moderation.
      # The entry ID is provided in the moderation_flag, so it isn't blatently obvious which entry you are
      # interacting with.  The method also outputs nothing, so success/failure is more difficult than necessary
      # to track.
      #
      # @param [Kaltura::ModerationFlag] moderation_flag The Kaltura Entry being flagged is hidden down in the field 'flagged_entry_id'.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] raises "ENTRY_ID_NOT_FOUND" if the entry_id isn't found in addition to default errors.
      ##
  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag)
  			perform_request('baseEntry','flag',kparams,false)
  		end

      ##
      # Rejects a Kaltura entry and marks any pending flags as moderated.
      # This makes the entry unplayable and is a much more sane method to flag content than the flag method.
      #
      # @param [String] entry_id The Kaltura entry to reject.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] raises "ENTRY_ID_NOT_FOUND" if the entry_id isn't found in addition to default errors.      
      ##
  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','reject',kparams,false)
  		end

      ##
      # Approves an entry and marks any pending flags as moderated.  
      # This makes the entry playable.
      #
      # @param [String] entry_id The Kaltura entry to approve.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] raises "ENTRY_ID_NOT_FOUND" if the entry_id isn't found in addition to default errors.
      ##
  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','approve',kparams,false)
  		end

      ##
      # Lists all pending moderation flags for the specified entry.
      #
      # @param [String] entry_id The Kaltura entry.
      # @param [Kaltura::FilterPager] pager An optional pager to use for a large list of pending moderation flags.
      #
      # @return [Kaltura::Response::ModerationFlagListResponse] Wrapper for Kaltura::BaseResponse.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','listFlags',kparams,false)
  		end
      
      ##
      # Anonymously ranks an entry.
      # There is no validation done on duplicate rankings.
      #
      # @param [String] entry_id The Kaltura entry to rank.
      # @param [Integer] rank The rank to assign.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('baseEntry','anonymousRank',kparams,false)
  		end

      ##
      # Retrieves the context data from a Kaltura entry.  This is not documented in the API.
      # I'd be cautious about actually using this method.
      #
      # @param [String] entry_id The Kaltura entry.
      # @param [Kaltura::EntryContextDataParams] context_data_params The only field not inherited from Kaltura::ObjectBase
      #   is referrer, so I imagine that is what you should set.
      #
      # @return [Kaltura::EntryConextDataResult] Returns some context info, including is the entry restricted by country or session.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get_context_data(entry_id, context_data_params)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'contextDataParams', context_data_params)
  			perform_request('baseEntry','getContextData',kparams,false)
  		end
  	end #class BaseEntryService
	end
end