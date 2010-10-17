module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::BaseEntry
    ##    
    module Entry
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::BaseEntry
      ##      
      class ModerationStatus
    		PENDING_MODERATION = 1 #status prior after addition
    		APPROVED = 2 #approved state
    		REJECTED = 3 #rejected state
    		FLAGGED_FOR_REVIEW = 5 #pending flags are present
    		AUTO_APPROVED = 6 #approved without moderation
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::BaseEntry
      ##    	
    	class Status
    		ERROR_IMPORTING = -2 #error'd during import
    		ERROR_CONVERTING = -1 #error'd during conversion
    		IMPORT = 0 #importing
    		PRECONVERT = 1 #queued for conversion
    		READY = 2 #ready
    		DELETED = 3 #deleted
    		PENDING = 4 #pending moderation 
    		MODERATE = 5 #moderated
    		BLOCKED = 6 #rejected from moderation
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::BaseEntry
      ##    	
    	class Type
    		AUTOMATIC = -1 #automatically determines status.  The default.
    		MEDIA_CLIP = 1 #playable media type.
    		MIX = 2 #Kaltura::MixEntry
    		PLAYLIST = 5 #a collection of media entries.
    		DATA = 6 #Kaltura::DataEntry
    		LIVE_STREAM = 7 #Kaltura::LiveStreamEntry
    		DOCUMENT = 10 #Kaltura::DocumentEntry
    	end
    end
  end
end