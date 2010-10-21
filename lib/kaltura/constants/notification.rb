module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::NotificationFilter
    # @see Kaltura::Service::NotificationService
    ##
    module Notification
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::NotificationFilter
      ##
      class OrderBy
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descening.
    		EXECUTION_ATTEMPTS_ASC = "+executionAttempts" #order by execution attempts ascending.
    		EXECUTION_ATTEMPTS_DESC = "-executionAttempts" #order by execution attempts descending.
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Service::NotificationService
      ##    	
    	class Type
    		ENTRY_ADD = 1 #Notify when an entry is added.
    		ENTR_UPDATE_PERMISSIONS = 2 #Notify when an entries permisisons have changed.
    		ENTRY_DELETE = 3 #Notify when an entry is deleted.
    		ENTRY_BLOCK = 4 #Notify when an entry becomes unavailable due to moderation.
    		ENTRY_UPDATE = 5 #Notify when an entry is updated.
    		ENTRY_UPDATE_THUMBNAIL = 6 #Notify when an entries thumbnail is updated.
    		ENTRY_UPDATE_MODERATION = 7 #Notify when an entry is moderated.
    		USER_ADD = 21 #Notify when a new user is created.
    		USER_BANNED = 26 #Notify when a user is banned.
    	end
    end
  end
end