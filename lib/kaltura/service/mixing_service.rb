module Kaltura
  module Service
    class MixingService < BaseService

  		def add(mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'mixEntry', mix_entry)
  			perform_request('mixing','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','get',kparams,false)
  		end

  		def update(entry_id, mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'mixEntry', mix_entry)
  			perform_request('mixing','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('mixing','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('mixing','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('mixing','count',kparams,false)
  		end

  		def clone(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('mixing','clone',kparams,false)
  		end

  		def append_media_entry(mix_entry_id, media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mixEntryId', mix_entry_id)
  			client.add_param(kparams, 'mediaEntryId', media_entry_id)
  			perform_request('mixing','appendMediaEntry',kparams,false)
  		end

  		def request_flattening(entry_id, file_format, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileFormat', file_format)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','requestFlattening',kparams,false)
  		end

  		def get_mixes_by_media_id(media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntryId', media_entry_id)
  			perform_request('mixing','getMixesByMediaId',kparams,false)
  		end

  		def get_ready_media_entries(mix_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'mixId', mix_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','getReadyMediaEntries',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('mixing','anonymousRank',kparams,false)
  		end
  	end #class MixingService
	end
end