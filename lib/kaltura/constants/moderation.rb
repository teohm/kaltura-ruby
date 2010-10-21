module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::ModerationFlag
    ##
    module Moderation
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::ModerationFlag
      ##      
      class FlagStatus
    		PENDING = 1 #Pending moderation flag
    		MODERATED = 2 #Moderated flag
    	end
    	
    	class FlagType
    		SEXUAL_CONTENT = 1 #Flag for sexual content
    		VIOLENT_REPULSIVE = 2 #Flag for violent or repulsive content
    		HARMFUL_DANGEROUS = 3 #Flag for harmful or dangerous content
    		SPAM_COMMERCIALS = 4 #Spam flag
    	end
    	
      class ObjectType
    		ENTRY = 2 #flag a entry.
    		USER = 3 #flag a user.
    	end
    end
  end
end