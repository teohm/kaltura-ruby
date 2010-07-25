module Kaltura
  module Service
  	class PlaylistService < BaseService

  		def add(playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'playlist', playlist)
  			client.add_param(kparams, 'updateStats', update_stats)
  			perform_request('playList','add',kparams,false)
  		end

  		def get(id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'version', version)
  			perform_request('playList','get',kparams,false)
  		end

  		def update(id, playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'playlist', playlist)
  			client.add_param(kparams, 'updateStats', update_stats)
  			perform_request('playList','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('playList','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('playList','list',kparams,false)
  		end

  		def execute(id, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','execute',kparams,false)
  		end

  		def execute_from_content(playlist_type, playlist_content, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type)
  			client.add_param(kparams, 'playlistContent', playlist_content)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','executeFromContent',kparams,false)
  		end

  		def execute_from_filters(filters, total_results, detailed='')
  			kparams = {}
  			filters.each do |obj|
  				client.add_param(kparams, 'filters', obj)
  			end
  			client.add_param(kparams, 'totalResults', total_results)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','executeFromFilters',kparams)
  		end

  		def get_stats_from_content(playlist_type, playlist_content)
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type)
  			client.add_param(kparams, 'playlistContent', playlist_content)
  			perform_request('playList','getStatsFromContent',kparams,false)
  		end
  	end #class PlaylistService
	end
end