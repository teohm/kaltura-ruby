module Kaltura
  module Service
    class SystemService < BaseService

  		def ping()
  			kparams = {}
  			perform_request('system','ping',kparams,false)
  		end
  	end #class SystemService
	end
end