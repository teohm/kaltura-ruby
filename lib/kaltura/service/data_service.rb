module Kaltura
  module Service
    ##
    # The Data Service allows you to add and manage texual content.
    #
    # @example Creating a new DataEntry:
    #   new_data_entry = Kaltura::DataEntry.new
    #   new_data_entry.name = "pancake"
    #   new_data_entry.data_content = "We all know  that waffles are better.  But the documentation author is tired."
    #   client.data_entry_service.add(new_data_entry)
    #
    # @example Retrieve a DataEntry:
    #   client.data_entry_service.get('1_ad342xk')
    # 
    # @example Update a DataEntry:
    #   update_entry = Kaltura::DataEntry.new
    #   update_entry.data_content = 'Ninjas <3 waffles.  Pirates love the pancakes.'
    #   client.data_entry_service.update('1_ad342xk',update_entry)
    #
    # @example Delete a DataEntry:
    #   client.data_entry_service.delete('1_ad342xk')
    #
    # @example Filter DataEntries by group ID 2:
    #   filter = Kaltura::Filter::DataEntryFilter.new
    #   filter.group_id_equal = '2'
    #   client.data_entry_service.list(filter)
    ##
    class DataService < BaseService

      ##
      # Adds a new data entry.
      #
      # @param [Kaltura::DataEntry] data_entry This is essentially a BaseEntry except there
      #   is a field called data_content.  Presumably you shove text into this field.
      #
      # @return [Kaltura::DataEntry] Returns the data entry as it is stored in the DB.
      #
      # @raise [Kaltura::APIError] Raises the default Kaltura errors.
      ##
  		def add(data_entry)
  			kparams = {}
  			client.add_param(kparams, 'dataEntry', data_entry)
  			perform_request('data','add',kparams,false)
  		end

      ##
      # Gets a data entry by ID.
      #
      # @param [String] entry_id the DataEntry id.
      # @param [Integer] version Version of the DataEntry.
      #
      # @return [Kaltura::DataEntry] Returns the desired DataEntry object.
      # 
      # @raise [Kaltura::APIError] Raises the default Kaltura errors in addition to 'ENTRY_ID_NOT_FOUND'.
      ##
  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('data','get',kparams,false)
  		end

      ##
      # Updates a data entry.
      # As with other update actions, the best practice is to instantiate a new Kaltura::DataEntry object
      # and set the fields of that object that you wish to change.
      #
      # @param [String] entry_id The DataEntry you wish to update.
      # @param [Kaltura::DataEntry] document_entry A newly instantiated DataEntry object with only 
      #   the fields that you wish to update filled in.
      #
      # @return [Kaltura::DataEntry] Returns the updated DataEntry object complete with a version bump.
      # 
      # @raise [Kaltura::APIError] Raises the default Kaltura errors in addition to 'ENTRY_ID_NOT_FOUND'.
      ##
  		def update(entry_id, document_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'documentEntry', document_entry)
  			perform_request('data','update',kparams,false)
  		end

      ##
      # Removes a DataEntry object.
      #
      # @param [String] entry_id the DataEntry to delete.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises the default Kaltura errors in addition to 'ENTRY_ID_NOT_FOUND'.      
      ##
  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('data','delete',kparams,false)
  		end

      ##
      # Lists DataEntry objects with the given filter and paging support for larger sets of data.
      #
      # @param [Kaltura::Filter::DataEntryFilter] filter The filter to apply to the list.
      # @param [Kaltura::FilterPager] pager The default Kaltura pager.
      #
      # @return [Kaltura::Response::DataListResponse] Wrapper for Kaltura::Response::BaseResponse.
      #
      # @raise [Kaltura::APIError] Raises the default Kaltura errrors.
      ##
  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('data','list',kparams,false)
  		end
  	end #class DataService
	end
end