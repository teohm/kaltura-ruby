module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::ControlPanelCommandFilter
    ##
    module ControlPanelCommand
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::ControlPanelCommandFilter
      ##      
      class OrderBy
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    		UPDATED_AT_ASC = "+updatedAt" #order by updated_at ascending.
    		UPDATED_AT_DESC = "-updatedAt" #order by updated_at descending.
    	end
    	
    	# @private
    	class Status
    		PENDING = 1
    		HANDLED = 2
    		DONE = 3
    		FAILED = 4
    	end
    	
    	# @private
    	class TargetType
    		DATA_CENTER = 1
    		SCHEDULER = 2
    		JOB_TYPE = 3
    		JOB = 4
    		BATCH = 5
    	end
    	
    	# @private
    	class Type
    		STOP = 1
    		START = 2
    		CONFIG = 3
    		KILL = 4
    	end
    end
  end
end