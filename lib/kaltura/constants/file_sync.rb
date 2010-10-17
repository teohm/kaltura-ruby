module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::FileSyncFilter
    # @see Kaltura::FileSync
    ##    
    module FileSync
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::FileSync
      ##
      class ObjectType
    		ENTRY = 1 #Kaltura::BaseEntry
    		UICONF = 2 #Kaltura::UiConf
    		BATCHJOB = 3 #Kaltura::BulkUpload
    		FLAVOR_ASSET = 4 #Kaltura::FlavorAsset
    	end
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::FileSyncFilter
      ##    	
    	class OrderBy
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    		UPDATED_AT_ASC = "+updatedAt" #order by updated_at ascending.
    		UPDATED_AT_DESC = "-updatedAt" #order by updated_at descending.
    		READY_AT_ASC = "+readyAt" #order by ready_at ascending.
    		READY_AT_DESC = "-readyAt" #order by ready_at descending.
    		SYNC_TIME_ASC = "+syncTime" #order by sync time ascending.
    		SYNC_TIME_DESC = "-syncTime" #order by sync time descending.
    		FILE_SIZE_ASC = "+fileSize" #order by file size ascending.
    		FILE_SIZE_DESC = "-fileSize" #order by file size descending.
    	end
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::FileSync
      ##    	
    	class Status
    		ERROR = -1 #error state
    		PENDING = 1 #pending state
    		READY = 2 #ready
    		DELETED = 3 #deleted state
    		PURGED = 4 #not only flagged as deleted, but really deleted.
    	end
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::FileSync
      ##    	
    	class Type
    		FILE = 1 #File
    		LINK = 2 #Link 
    		URL = 3 #URL
    	end
    end
  end
end