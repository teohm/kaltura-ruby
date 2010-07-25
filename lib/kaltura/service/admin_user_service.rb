module Kaltura
  module Service
    class AdminUserService < BaseService

  		def update_password(email, password, new_email='', new_password='')
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			client.add_param(kparams, 'newEmail', new_email)
  			client.add_param(kparams, 'newPassword', new_password)
  			perform_request('adminUser','updatePassword',kparams,false)
  		end

  		def reset_password(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			perform_request('adminUser','resetPassword',kparams,false)
  		end

  		def login(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			perform_request('adminUser','login',kparams,false)
  		end
  	end #class AdminUserService
	end
end