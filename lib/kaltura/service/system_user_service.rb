module Kaltura
  module Service
    class SystemUserService < BaseService

  		def verify_password(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			perform_request('systemUser','verifyPassword',kparams,false)
  		end

  		def generate_new_password()
  			kparams = {}
  			perform_request('systemUser','generateNewPassword',kparams,false)
  		end

  		def set_new_password(user_id, password)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'password', password)
  			perform_request('systemUser','setNewPassword',kparams,false)
  		end

  		def add(system_user)
  			kparams = {}
  			client.add_param(kparams, 'systemUser', system_user)
  			perform_request('systemUser','add',kparams,false)
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('systemUser','get',kparams,false)
  		end

  		def get_by_email(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			perform_request('systemUser','getByEmail',kparams,false)
  		end

  		def update(user_id, system_user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'systemUser', system_user)
  			perform_request('systemUser','update',kparams,false)
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('systemUser','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemUser','list',kparams,false)
  		end
  	end #class SystemUserService
	end
end