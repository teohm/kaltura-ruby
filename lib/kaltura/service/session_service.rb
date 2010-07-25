module Kaltura
  module Service
    class SessionService < BaseService

  		def start(secret, user_id='', type=0, partner_id=-1, expiry=86400, privileges='')
  			kparams = {}
  			client.add_param(kparams, 'secret', secret)
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'type', type)
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'expiry', expiry)
  			client.add_param(kparams, 'privileges', privileges)
  			perform_request('session','start',kparams,false)
  		end

  		def start_widget_session(widget_id, expiry=86400)
  			kparams = {}
  			client.add_param(kparams, 'widgetId', widget_id)
  			client.add_param(kparams, 'expiry', expiry)
  			perform_request('session','startWidgetSession',kparams,false)
  		end
  	end #class SessionService
	end
end