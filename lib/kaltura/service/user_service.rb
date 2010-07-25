module Kaltura
  module Service
    class UserService < BaseService

  		def add(user)
  			kparams = {}
  			client.add_param(kparams, 'user', user)
  			perform_request('user','add',kparams,false)
  		end

  		def update(user_id, user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'user', user)
  			perform_request('user','update',kparams,false)
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','get',kparams,false)
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('user','list',kparams,false)
  		end

  		def notify_ban(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','notifyBan',kparams,false)
  		end
  	end #class UserService
	end
end