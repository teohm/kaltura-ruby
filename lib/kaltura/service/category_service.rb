module Kaltura
  module Service
    class CategoryService < BaseService

  		def add(category)
  			kparams = {}
  			client.add_param(kparams, 'category', category)
  			perform_request('category','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','get',kparams,false)
  		end

  		def update(id, category)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'category', category)
  			perform_request('category','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','delete',kparams,false)
  		end

  		def list(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('category','list',kparams,false)
  		end
  	end #class CategoryService
	end
end