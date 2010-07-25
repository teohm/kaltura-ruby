module Kaltura
  module Service
    class SyndicationFeedService < BaseService

  		def add(syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'syndicationFeed', syndication_feed)
  			perform_request('syndicationFeed','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('syndicationFeed','get',kparams,false)
  		end

  		def update(id, syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'syndicationFeed', syndication_feed)
  			perform_request('syndicationFeed','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('syndicationFeed','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('syndicationFeed','list',kparams,false)
  		end

  		def get_entry_count(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id)
  			perform_request('syndicationFeed','getEntryCount',kparams,false)
  		end

  		def request_conversion(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id)
  			perform_request('syndicationFeed','requestConversion',kparams,false)
  		end
  	end #class SyndicationFeedService
	end
end