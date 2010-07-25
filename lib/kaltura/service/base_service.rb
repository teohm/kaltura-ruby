module Kaltura
  module Service
    class BaseService
    	attr_accessor :client

    	def initialize(client)
    		@client = client
    	end

    	def perform_request(service_class,service_action,paramters,allow_multirequest=true)
        if allow_multirequest == false && client.is_multirequest
          return nil
        else
          client.queue_service_action_call(service_class,service_action,paramters)
          return client.do_queue
        end
      end
    end #class BaseService
  end
end