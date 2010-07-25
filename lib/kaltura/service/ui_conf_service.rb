module Kaltura
  module Service
    class UiConfService < BaseService

  		def add(ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'uiConf', ui_conf)
  			perform_request('uiConf','add',kparams,false)
  		end

  		def update(id, ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'uiConf', ui_conf)
  			perform_request('uiConf','update',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','get',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','delete',kparams,false)
  		end

  		def clone(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','clone',kparams,false)
  		end

  		def list_templates(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('uiConf','listTemplates',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('uiConf','list',kparams,false)
  		end
  	end #class UiConfService
	end
end