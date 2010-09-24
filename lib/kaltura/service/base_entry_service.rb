module Kaltura
  module Service
    ##
    # BaseEntryService is a service for generic entries.  If you do not know what type of media you are working with,
    # this is a good service to use.  You need to know what media type you are working with for MediaService.
    #
    # @example THIS IS SPARTA
    #   SPARRRRRRRRRTAAAAAAAAA
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
      # @raise [Kaltura::APIError]
      ##
  		def add_from_uploaded_file(entry, upload_token_id, type=-1)
  			kparams = {}
  			client.add_param(kparams, 'entry', entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			client.add_param(kparams, 'type', type)
  			perform_request('baseEntry','addFromUploadedFile',kparams,false)
  		end

      ##
      #
      ##
  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('baseEntry','get',kparams,false)
  		end

  		def update(entry_id, base_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'baseEntry', base_entry)
  			perform_request('baseEntry','update',kparams,false)
  		end

  		def get_by_ids(entry_ids)
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids)
  			perform_request('baseEntry','getByIds',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('baseEntry','count',kparams,false)
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','upload',kparams,false)
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','updateThumbnailJpeg',kparams,false)
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('baseEntry','updateThumbnailFromUrl',kparams,false)
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'sourceEntryId', source_entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('baseEntry','updateThumbnailFromSourceEntry',kparams,false)
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag)
  			perform_request('baseEntry','flag',kparams,false)
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','reject',kparams,false)
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','approve',kparams,false)
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','listFlags',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('baseEntry','anonymousRank',kparams,false)
  		end

  		def get_context_data(entry_id, context_data_params)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'contextDataParams', context_data_params)
  			perform_request('baseEntry','getContextData',kparams,false)
  		end
  	end #class BaseEntryService
	end
end