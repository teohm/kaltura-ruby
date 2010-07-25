module Kaltura
  module Service
    class SearchService < BaseService

  		def search(search, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'search', search)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('search','search',kparams,false)
  		end

  		def get_media_info(search_result)
  			kparams = {}
  			client.add_param(kparams, 'searchResult', search_result)
  			perform_request('search','getMediaInfo',kparams,false)
  		end

  		def search_url(media_type, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaType', media_type)
  			client.add_param(kparams, 'url', url)
  			perform_request('search','searchUrl',kparams,false)
  		end

  		def external_login(search_source, user_name, password)
  			kparams = {}
  			client.add_param(kparams, 'searchSource', search_source)
  			client.add_param(kparams, 'userName', user_name)
  			client.add_param(kparams, 'password', password)
  			perform_request('search','externalLogin',kparams,false)
  		end
  	end #class SearchService
	end
end