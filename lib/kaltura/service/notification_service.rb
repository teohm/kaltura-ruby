module Kaltura
  module Service
    class NotificationService < BaseService

  		def get_client_notification(entry_id, type)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'type', type)
  			perform_request('notification','getClientNotification',kparams,false)
  		end
  	end #class NotificationService
	end
end