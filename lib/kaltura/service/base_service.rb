module Kaltura
  module Service
    ##
    # Base Service is a method extraction refactoring performed on the Service module for the Velir 
    # branch of the kaltura-ruby library.  Previously perform_request existed in each method of each
    # service.
    #
    # @author Patrick Robertson
    ##
    class BaseService
    	attr_accessor :client

    	def initialize(client)
    		@client = client
    	end
      
      ##
      # Enqueues the service class, action, and paramters onto the client object and then
      # informs the client object to perform pop an action off the queue.
      #
      # @param [String] service_class The particular class within the Service module.  
      #   This translates to a paramter of service=service_class on the http request.
      # @param [String] service_action The action method performed by the service_class.
      #   This translates to a parameter of action=service_action on the http request.
      # @param [Boolean] allow_multirequest I've never seen this implemented.  It's around
      #   just in case though.
      # 
      # @return [Object] Returns the result of the request.
      #
      # @raise [Kaltura::APIError] Raises the Kaltura error of the request.
      ## 
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