module Kaltura
  module Service
    
    ##
    # The live stream service lets you manage live stream channels.
    ##
    class LiveStreamService < BaseService
      
      ##
      # Adds a new live stream entry.
      # The entry will be queued for provision.
      #
      # @param [Kaltura::LiveStreamAdminEntry] live_stream_entry The live stream entry metadata.
      # media_type
      # encodingIP1
      ##
  		def add(live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('liveStream','get',kparams,false)
  		end

  		def update(entry_id, live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('liveStream','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('liveStream','list',kparams,false)
  		end

  		def update_offline_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('liveStream','updateOfflineThumbnailJpeg',kparams,false)
  		end

  		def update_offline_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('liveStream','updateOfflineThumbnailFromUrl',kparams,false)
  		end
  	end #class LiveStreamService
	end
end