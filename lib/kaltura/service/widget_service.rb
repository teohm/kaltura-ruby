module Kaltura
  module Service
    class WidgetService < BaseService

  		def add(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','add',kparams,false)
  		end

  		def update(id, widget)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','update',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('widget','get',kparams,false)
  		end

  		def clone(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','clone',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('widget','list',kparams,false)
  		end
  	end #class WidgetService
	end
end