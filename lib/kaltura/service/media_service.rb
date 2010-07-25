module Kaltura
  module Service
  	class MediaService < BaseService
  	  
  		def add_from_bulk(media_entry, url, bulk_upload_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'url', url)
  			client.add_param(kparams, 'bulkUploadId', bulk_upload_id)
  			perform_request('media','addFromBulk',kparams,false)
  		end

  		def add_from_url(media_entry, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'url', url)
  			perform_request('media','addFromUrl',kparams,false)
  		end

  		def add_from_search_result(media_entry=nil, search_result=nil)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'searchResult', search_result)
  			perform_request('media','addFromSearchResult',kparams,false)
  		end

  		def add_from_uploaded_file(media_entry, upload_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			perform_request('media','addFromUploadedFile',kparams,false)
  		end

  		def add_from_recorded_webcam(media_entry, webcam_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'webcamTokenId', webcam_token_id)
  			perform_request('media','addFromRecordedWebcam',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('media','get',kparams,false)
  		end

  		def update(entry_id, media_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			perform_request('media','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('media','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('media','count',kparams,false)
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('media','upload',kparams,false)
  		end

  		def update_thumbnail(entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('media','updateThumbnail',kparams,false)
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'sourceEntryId', source_entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('media','updateThumbnailFromSourceEntry',kparams,false)
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('media','updateThumbnailJpeg',kparams,false)
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('media','updateThumbnailFromUrl',kparams,false)
  		end

  		def request_conversion(entry_id, file_format)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileFormat', file_format)
  			perform_request('media','requestConversion',kparams,false)
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag)
  			perform_request('media','flag',kparams,false)
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','request',kparams,false)
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','approve',kparams,false)
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('media','listFlags',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('media','anonymousRank',kparams,false)
  		end
  	end #class MediaService
	end
end