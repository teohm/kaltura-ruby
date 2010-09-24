module Kaltura
  module Service
    ##
    # AccessControlService is responsible for adding and managing access control profiles.
    # 
    # @example Add a new access control profile:
    #   access_control = Kaltura::AccessControl.new
    #   access_control.name = "Restrictions"
    #   client.access_control_service.add(access_control)
    #
    # @example Retrive an access control profile:
    #   client.access_control_service.get(5)
    #
    # @example Update an existing access control profile:
    #   new_access_control = Kaltura::AccessControl.new
    #   new_access_control.description = "making the world safer one profile at a time."
    #   client.access_control_service.update(5,new_access_control)
    #
    # @example Delete an eisting access control profile:
    #   client.access_control_service.delete(5)
    #
    # @example List up to 10 Access Control Profiles ordered by name:
    #   filter = Kaltura::Filter::AccessControlFilter.new
    #   filter.order_by('name')
    #   pager = Kaltura::FilterPager.new
    #   pager.page_size = 10
    #   client.access_control_service.list(filter,pager)
    ##
    class AccessControlService < BaseService
      
      ##
      # Adds a new Access Control Profile.
      #
      # @param [Kaltura::AccessControl] access_control The new profile to add.
      # 
      # @return [Kaltura::AccessControl] Returns the AccessControl object if the action was successful.  Useful for knowing the id of the object.
      #
      # @raise [Kaltura::APIError] default Kaltura error messages.
      ##
  		def add(access_control)
  			kparams = {}
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','add',kparams,false)
  		end
      
      ##
      # Retrieves an Access Control Profile by ID.
      #
      # @param [Integer] id The Access Control Profile ID.
      #
      # @return [Kaltura::AccessControl]  Returns the AccessControl object if the action was successful.
      #
      # @raise [Kaltura::APIError] default Kaltura error messages.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','get',kparams,false)
  		end

      ##
      # Updates an Access Control Profile by ID. Like other API update service calls, you instantiate a new AccessControl object,
      # perform your changes to the new object, and use that as the second parameter.  There are no required parameters.
      #
      # @param [Integer] id The Access Control Profile ID.
      # @param [Kaltura::AccessControl] access_control A newly instantiated AccessControl object that has the only the attributes you want to edit.  
      # 
      # @return [Kaltura:AccessControl] Returns the updated Access Control profile if the action was successful.
      #
      # @raise [Kaltura::APIError] default Kaltura error messages.
      ##
  		def update(id, access_control)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','update',kparams,false)
  		end

      ##
      # Deletes an Access Control Profile by ID.
      #
      # @param [Integer] id The Access Control Profile ID.
      # 
      # @return [nil] returns nothing
      # 
      # @raise [Kaltura::APIError] default Kaltura error messages.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','delete',kparams,false)
  		end
      
      ##
      # Lists Access Control Profiles given an optional filter and pager.
      #
      # @param [Kaltura::Filter::AccessControlFilter] filter
      # @param [Kaltura::FilterPager] pager
      # 
      # @return [Kaltura::Response::AccessControlListResponse] Returns an equivalent response to Kaltura::BaseResponse.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('accessControl','list',kparams,false)
  		end
  	end #class AccessControlService
  end
end